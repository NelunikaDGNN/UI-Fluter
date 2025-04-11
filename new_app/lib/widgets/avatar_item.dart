import 'package:flutter/material.dart';

class AvatarItem extends StatelessWidget {
  final String label;
  final String? imagePath;
  final IconData? icon;
  final String? text;
  final bool isHighlighted;
  final Color? backgroundColor;

  const AvatarItem({
    super.key,
    required this.label,
    this.imagePath,
    this.icon,
    this.text,
    this.isHighlighted = false,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    Widget content;

    if (imagePath != null) {
      content = Container(
        width: 56,
        height: 56,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: isHighlighted ? Colors.green : Colors.transparent,
            width: 2,
          ),
        ),
        child: ClipOval(
          child: Image.asset(
            imagePath!,
            fit: BoxFit.cover,
          ),
        ),
      );
    } else {
      content = Container(
        width: 56,
        height: 56,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: backgroundColor ?? Colors.purple,
          border: Border.all(
            color: isHighlighted ? Colors.green : Colors.transparent,
            width: 2,
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          text ?? '',
          style: const TextStyle(color: Colors.black,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
    }

    return Column(
      children: [
        content,
        const SizedBox(height: 6),
        SizedBox(
          width: 70,
          child: Text(
            label,
            textAlign: TextAlign.center,
            maxLines: 2,
            style: Theme.of(context).textTheme.labelMedium,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
