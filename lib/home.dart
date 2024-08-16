import 'package:flutter/material.dart';
import 'components/link.dart';
import 'constants/meta_data.dart';

class ExperienceWidget extends StatelessWidget {
  final Experience exp;

  const ExperienceWidget({super.key,
    required this.exp});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(exp.title, style: const TextStyle(fontWeight: FontWeight.bold)),
        Text(exp.periodLocation,
            style: const TextStyle(fontWeight: FontWeight.w100)),
        const SizedBox(
          height: 8,
        ),
        Text(exp.desc),
        Text(exp.stacks),
      ],
    );
  }
}

class Experience {
  final String title;
  final String periodLocation;
  final String desc;
  final String stacks;

  Experience(
      {required this.title, required this.periodLocation, required this.desc, required this.stacks});

}

class Home extends StatelessWidget {
  const Home({super.key});

  List<Column> buildExperience(List<Experience> experiences) {
    return experiences.map((exp) => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ExperienceWidget(
          exp: exp,
        ),
        const SizedBox(
          height: 24,
        ),
      ],
    )).toList();
  }

  @override
  Widget build(BuildContext context) {
    final experiences = [
      Experience(title: exp1Title, periodLocation: exp1PeriodLocation, desc: exp1Description, stacks: exp1Stacks),
      Experience(title: exp2Title, periodLocation: exp2PeriodLocation, desc: exp2Description, stacks: exp2Stacks),
      Experience(title: exp3Title, periodLocation: exp3PeriodLocation, desc: exp3Description, stacks: exp3Stacks)
    ];

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white70,
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
                    ...buildExperience(experiences)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
