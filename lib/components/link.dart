import 'package:flutter/material.dart';

class TransparentTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final TextStyle? textStyle;

  const TransparentTextButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Text(
          text,
          style: textStyle
          ?? Theme.of(context).textTheme.bodyMedium,
    ),
    );
  }
}