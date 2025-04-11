import 'package:flutter/material.dart';
import 'avatar_item.dart';

class HorizontalAvatarList extends StatelessWidget {
  final String section;

  const HorizontalAvatarList({super.key, required this.section});

  @override
  Widget build(BuildContext context) {
    final data = {
      "favourites": [
        {"label": "CoffeeBreak", "image": "assets/images/coffe.jpg"},
        {"label": "Design", "image": "assets/images/coffe.jpg"},
        {"label": "Boss", "image": "assets/images/coffe.jpg"},
      ],
      "people": [
        {"label": "Matthew", "image": "assets/images/coffe.jpg"},
        {"label": "Amandine", "image": "assets/images/coffe.jpg"},
        {"label": "Nad", "image": "assets/images/coffe.jpg"},
        {"label": "Dave", "image": "assets/images/coffe.jpg"},
        {"label": "Team", "image": "assets/images/coffe.jpg"},
      ],
      "rooms": [
        {"label": "Operation Rebrand", "image": "assets/images/coffe.jpg"},
        {"label": "Kick-off", "image": "assets/images/coffe.jpg"},
        {"label": "System Alerts", "image": "assets/images/coffe.jpg"},
        {"label": "Our Map","image": "assets/images/coffe.jpg"},
        {"label": "Marketing", "image": "assets/images/coffe.jpg"},
      ],
      "low_priority": [
        {"label": "Amandine and Matt...", "text": "A"},
        {"label": "IRC Application...", "text": "I"},
      ]
    };

    final items = data[section]!;

    return SizedBox(
      height: 100,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        separatorBuilder: (_, __) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          final item = items[index];

          final isHighlighted = (section == "favourites" && index == 2) ||
                                (section == "people");

          // Define custom background color only for low_priority
          Color? backgroundColor;
          if (section == "low_priority") {
            backgroundColor = index == 0 ? Colors.purple : Colors.green;
          }

          return AvatarItem(
            label: item['label'] as String,
            imagePath: item['image'] as String?,
            text: item['text'] as String?,
            isHighlighted: isHighlighted,
            backgroundColor: backgroundColor,
          );
        },
      ),
    );
  }
}
