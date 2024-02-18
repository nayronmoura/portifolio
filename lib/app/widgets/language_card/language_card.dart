import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class LanguageCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  const LanguageCard(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.description});

  @override
<<<<<<< Updated upstream
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      decoration: const BoxDecoration(
        color: Color(0xFF1E1E1E),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(imageUrl, height: 100, width: 100),
          const SizedBox(height: 10),
          const Text(
            'Flutter',
            style: TextStyle(
              color: Color(0xFFE5E5E5),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
=======
  State<LanguageCard> createState() => _LanguageCardState();
}

class _LanguageCardState extends State<LanguageCard> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

  bool isBack = false;
  @override
  Widget build(BuildContext context) {
    return FlipCard(
      key: cardKey,
      flipOnTouch: true,
      back: Card(
        child: Container(
          width: 300,
          height: 300,
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                widget.description,
                textScaler: const TextScaler.linear(1),
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
      front: Card(
        child: Container(
          width: 300,
          height: 300,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    widget.imageUrl,
                    height: 100,
                    width: 100,
                  ),
                  Text(
                    widget.title,
                    textScaler: const TextScaler.linear(1),
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
>>>>>>> Stashed changes
      ),
    );
  }
}
