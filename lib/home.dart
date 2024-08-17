import 'package:experience_pages/constants/uri.dart';
import 'package:flutter/material.dart';
import 'components/link.dart';
import 'constants/meta_data.dart';
import 'dart:js' as js;

import 'experience.dart';

final experiences = [
  ExperienceData(
      title: exp1Title,
      periodLocation: exp1PeriodLocation,
      desc: exp1Description,
      stacks: exp1Stacks),
  ExperienceData(
      title: exp2Title,
      periodLocation: exp2PeriodLocation,
      desc: exp2Description,
      stacks: exp2Stacks),
  ExperienceData(
      title: exp3Title,
      periodLocation: exp3PeriodLocation,
      desc: exp3Description,
      stacks: exp3Stacks)
];

class Home extends StatelessWidget {
  const Home({super.key});

  void launchUriSubmission(String url) async {
    js.context.callMethod('open', [url]);
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white70,
        child: Column(
          children: [
            Container(
              height: 32,
              color: Colors.white60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const SizedBox(width: 8),
                  TransparentTextButton.icon(
                    icon: Icons.web_rounded,
                    text: 'Github',
                    onPressed: () => launchUriSubmission(githubLink),
                  ),
                  const SizedBox(width: 8),
                  TransparentTextButton.icon(
                    icon: Icons.social_distance_rounded,
                    text: 'LinkedIn',
                    onPressed: () => launchUriSubmission(linkedInLink),
                  ),
                  const SizedBox(width: 8),
                  TransparentTextButton.icon(
                    icon: Icons.analytics_rounded,
                    text: 'StackOverflow',
                    onPressed: () => launchUriSubmission(stackOverflowLink),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TransparentTextButton(
                              text: name,
                              textStyle: const TextStyle(fontSize: 32),
                              onPressed: () {}),
                          const Text(role),
                          const SizedBox(
                            height: 24,
                          ),
                          const Text(shortDescription),
                          const SizedBox(
                            height: 24,
                          ),
                          ExperienceSection(experiences: experiences)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
