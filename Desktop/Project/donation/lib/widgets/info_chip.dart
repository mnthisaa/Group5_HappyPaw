import 'package:flutter/material.dart';

class InfoChip extends StatelessWidget {
  final String text;
  final Color color;

  const InfoChip({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(text, style: const TextStyle(color: Colors.black)),
    );
  }
}
