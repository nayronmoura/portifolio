import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LanguageCard extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String description;
  const LanguageCard(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.description});

  @override
  State<LanguageCard> createState() => _LanguageCardState();
}

class _LanguageCardState extends State<LanguageCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onHover: (bool) {},
        child: Container(
          width: 300,
          height: 300,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(widget.imageUrl, height: 100, width: 100),
              Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
