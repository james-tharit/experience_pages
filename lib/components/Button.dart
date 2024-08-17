import 'package:flutter/material.dart';

class _LinkIconButton extends LinkButton {
  const _LinkIconButton(
      {super.text = '', required super.onPressed, required super.icon});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
        onPressed: onPressed,
        icon: Icon(icon),
        label: Text(
          text,
          style: const TextStyle(
            color: Colors.black, // Customize text color
            fontSize: 12.0,
          ),
        ));
  }
}

class LinkButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final TextStyle? textStyle;
  final IconData? icon;

  const LinkButton(
      {super.key,
      required this.text,
      required this.onPressed,
      this.textStyle,
      this.icon});

  factory LinkButton.icon({
    key,
    text,
    required onPressed,
    required icon,
    textStyle,
  }) {
    return _LinkIconButton(icon: icon, text: text, onPressed: onPressed);
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: textStyle ?? Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}
