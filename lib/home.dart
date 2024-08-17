import 'package:experience_pages/components/SpaceDivider.dart';
import 'package:experience_pages/constants/uri.dart';
import 'package:flutter/material.dart';
import 'components/Button.dart';
import 'constants/meta_data.dart';
import 'dart:js' as js;

import 'experience.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  Widget buildAppBar() => SliverAppBar(
        collapsedHeight: 30,
        toolbarHeight: 30,
        automaticallyImplyLeading: true,
        forceElevated: true,
        leadingWidth: double.maxFinite,
        leading: Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text('My Resume', style: TextStyle(fontWeight: FontWeight.bold, fontFeatures: [FontFeature.oldstyleFigures()]),),
            ),
          ),
        ),
        actions: [
          // const SizedBox(width: 8),
          LinkButton.icon(
            icon: Icons.web_rounded,
            text: 'Github',
            onPressed: () => launchUriSubmission(githubLink),
          ),
          // const SizedBox(width: 8),
          LinkButton.icon(
            icon: Icons.social_distance_rounded,
            text: 'LinkedIn',
            onPressed: () => launchUriSubmission(linkedInLink),
          ),
          // const SizedBox(width: 8),
          LinkButton.icon(
            icon: Icons.analytics_rounded,
            text: 'StackOverflow',
            onPressed: () => launchUriSubmission(stackOverflowLink),
          ),
        ],
      );

  Widget buildResume({required children}) => SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: children,
            ),
          ),
        ),
      );

  void launchUriSubmission(String url) async {
    js.context.callMethod('open', [url]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SelectionArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white70,
          child: Column(
            children: [
              Expanded(
                child: CustomScrollView(
                  slivers: [
                    buildAppBar(),
                    buildResume(children: [
                      const Text(name, style: TextStyle(fontSize: 32)),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(baseLocation),
                          SizedBox(
                            width: 8,
                          ),
                          Text(tel),
                          SizedBox(
                            width: 8,
                          ),
                          Text(email),
                          SizedBox(
                            width: 8,
                          ),
                          Text(linkedInLink)
                        ],
                      ),
                      const Text(role),
                      const SpaceDivider(),
                      const Text(
                        'Professional Summary',
                        style: TextStyle(fontSize: 24),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      const Text(shortDescription),
                      const SpaceDivider(),
                      ExperienceSection(experiences: experiences)
                    ])
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
