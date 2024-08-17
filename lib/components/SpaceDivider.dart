import 'package:flutter/material.dart';

class SpaceDivider extends StatelessWidget {
  const SpaceDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 14,
        ),
        Divider(color: Colors.black),
        SizedBox(
          height: 14,
        ),
      ],
    );
  }
}
