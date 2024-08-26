import 'package:experience_pages/constants/uri.dart';
import 'package:flutter/material.dart';
import 'components/Button.dart';
import 'dart:js' as js;

class Home extends StatelessWidget {
  const Home({super.key});

  PreferredSizeWidget buildAppBar() => AppBar(
        automaticallyImplyLeading: false,
        leadingWidth: double.maxFinite,
        leading: Container(
          alignment: Alignment.centerLeft,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              'Flutter Web',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFeatures: [FontFeature.oldstyleFigures()]),
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

  Widget buildBody({required children}) => Container(
        color: Colors.white,
        width: double.maxFinite,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: children,
          ),
        ),
      );

  void launchUriSubmission(String url) async {
    js.context.callMethod('open', [url]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(),
        body: buildBody(
            children: [const Expanded(child: Text("Hello Flutter Web"))]));
  }
}
