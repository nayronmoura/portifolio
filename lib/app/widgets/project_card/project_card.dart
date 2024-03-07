import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatefulWidget {
  final ImageProvider imageProvider;
  final String title;
  final String description;
  final String repositoryLink;

  const ProjectCard(
      {super.key,
      required this.imageProvider,
      required this.title,
      required this.description,
      required this.repositoryLink});

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 0,
      child: SizedBox(
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.maxFinite,
              height: 150,
              color: Colors.red,
              child: Image(
                image: widget.imageProvider,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  descriptionText(),
                  const SizedBox(height: 10),
                  TextButton(
                    onPressed: () async {
                      //FIX: this not open a link in the browser
                      await launchUrl(
                        Uri.parse(widget.repositoryLink),
                      );
                    },
                    child: const Text("Link to repository"),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget descriptionText() {
    List words = widget.description.split(" ");
    if (words.length > 5 && !isExpanded) {
      return RichText(
          text: TextSpan(
        style: Theme.of(context).textTheme.bodyMedium,
        children: [
          TextSpan(
            text:
                "${words.sublist(0, (words.length / 3).round()).join(' ')}...",
          ),
          TextSpan(
            style: const TextStyle(fontWeight: FontWeight.bold),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
            text: "   read more",
          ),
        ],
      ));
    } else if (words.length > 5 && isExpanded) {
      return RichText(
          text: TextSpan(
        style: Theme.of(context).textTheme.bodyMedium,
        children: [
          TextSpan(
            text: widget.description,
          ),
          TextSpan(
            style: const TextStyle(fontWeight: FontWeight.bold),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
            text: "   read less",
          ),
        ],
      ));
    } else {
      return Text(widget.description);
    }
  }
}
