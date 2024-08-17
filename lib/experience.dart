import 'package:flutter/material.dart';

class ExperienceData {
  final String title;
  final String periodLocation;
  final String desc;
  final String stacks;

  ExperienceData(
      {required this.title,
        required this.periodLocation,
        required this.desc,
        required this.stacks});
}

class ExperienceWidget extends StatelessWidget {
  final ExperienceData exp;

  const ExperienceWidget({super.key, required this.exp});

  @override
  Widget build(BuildContext context) {
    return Column(
      key: Key(exp.title),
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

class ExperienceSection extends StatelessWidget {
  final List<ExperienceData> experiences;
  const ExperienceSection({super.key, required this.experiences});

  List<Column> buildExperience() {
    return experiences
        .map((exp) => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ExperienceWidget(
          exp: exp,
        ),
        const SizedBox(
          height: 24,
        ),
      ],
    ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: buildExperience(),
    );
  }
}
