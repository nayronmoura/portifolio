import 'package:flutter/material.dart';

class TextAnimated extends StatefulWidget {
  final void Function()? onEnd;
  final bool isLoop;
  final String text;
  final TextStyle? style;
  final Duration? duration;
  final TextScaler? textScaler;
  final TextAlign? textAlign;
  const TextAnimated(
      {super.key,
      this.onEnd,
      required this.text,
      this.isLoop = false,
      this.duration,
      this.textScaler,
      this.textAlign,
      this.style});

  @override
  State<TextAnimated> createState() => _TextAnimatedState();
}

class _TextAnimatedState extends State<TextAnimated>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: widget.duration ?? const Duration(seconds: 2),
    );
    _animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(_controller);

    _controller.forward();

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Future.delayed(const Duration(seconds: 2), () {
          if (widget.isLoop) {
            _controller.reset();
            _controller.forward();
          } else if (widget.onEnd != null) {
            widget.onEnd!();
          }
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _animation,
        builder: (context, _) {
          return Text(
            widget.text
                .substring(0, (_animation.value * widget.text.length).round()),
            textAlign: widget.textAlign ?? TextAlign.center,
            textScaler: widget.textScaler,
            style: widget.style ??
                const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
          );
        });
  }
}
