import 'package:flutter/material.dart';
import 'package:portifolio/app/util/constants.dart';

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
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "About me",
              textScaler: TextScaler.linear(1.5),
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Hello, my name is Nayron Gabriel, I am 20 years old, and I am a Brazilian software developer with a passion for technology. With almost 3 years of experience, I have acquired solid skills in Dart, Flutter, Java, and Spring Boot. Currently, I am expanding my knowledge in native Android development. I believe technology has the power to transform the world, and I actively seek challenges that allow me to contribute to this advancement. I am always eager to learn and explore opportunities for growth. Let's build the future together!",
              textScaler: TextScaler.linear(1.3),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
