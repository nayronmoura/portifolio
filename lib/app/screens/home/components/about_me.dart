import 'package:flutter/material.dart';
import 'package:portifolio/app/util/constants.dart';
import 'package:portifolio/core/generated/l10n.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    bool mobile = isMobile(context);
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: mobile ? double.infinity : 1000,
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              S.of(context).aboutMe,
              textScaler: const TextScaler.linear(1.5),
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              S.of(context).aboutMeDescription(age),
              textScaler: const TextScaler.linear(1.3),
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }

  String get age {
    final now = DateTime.now();
    return (now.year - 2003).toString();
  }
}
