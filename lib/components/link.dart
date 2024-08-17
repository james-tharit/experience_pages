import 'package:flutter/material.dart';

class _TransparentIconButton extends TransparentTextButton {
  const _TransparentIconButton(
      {super.text = '', required super.onPressed, required super.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FittedBox(
          child: Row(
            children: [
              Icon(icon),
              const SizedBox(height: 4.0,width: 4,),
              Text(
                text,
                style: const TextStyle(
                  color: Colors.black, // Customize text color
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TransparentTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final TextStyle? textStyle;
  final IconData? icon;

  const TransparentTextButton(
      {super.key,
      required this.text,
      required this.onPressed,
      this.textStyle,
      this.icon});

  factory TransparentTextButton.icon({
    key,
    text,
    required onPressed,
    required icon,
    textStyle,
  }) {
    return _TransparentIconButton(icon: icon, text: text, onPressed: onPressed);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Text(
        text,
        style: textStyle ?? Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}
