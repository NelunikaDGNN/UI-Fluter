import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final int count;

  const SectionTitle({super.key, required this.title, required this.count});

  @override
  Widget build(BuildContext context) {
    return Container(
     // same as AppBar
    width: double.infinity,
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
    child: Text(
      '$title $count',
      style: Theme.of(context).textTheme.titleMedium?.copyWith(
            color: Colors.grey[400],
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
    ),
  );
  }
}
