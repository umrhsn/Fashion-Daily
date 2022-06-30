import 'package:flutter/material.dart';

class TextDivider extends StatelessWidget {
  final String text;

  const TextDivider({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Flexible(child: Divider()),
        const SizedBox(width: 20),
        Text(text, style: const TextStyle(color: Colors.grey)),
        const SizedBox(width: 20),
        const Flexible(child: Divider())
      ],
    );
  }
}
