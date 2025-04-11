import 'package:flutter/material.dart';
import 'avatar_item.dart';

class HorizontalAvatarList extends StatelessWidget {
  final String section;

  const HorizontalAvatarList({super.key, required this.section});

  @override
  Widget build(BuildContext context) {
    final data = {
      "favourites": [
        {"label": "Coffee\nBreak", "image": "assets/images/coffe.jpg"},
        {"label": "Design", "image": "assets/images/jellyfish.jpg"},
        {"label": "Boss", "image": "assets/images/koala.jpg"},
      ],
      "people": [
        {"label": "Matthew", "image": "assets/images/m1.jpg"},
        {"label": "Amandine", "image": "assets/images/women.jpg"},
        {"label": "Nad", "image": "assets/images/m1.jpg"},
        {"label": "Dave", "image": "assets/images/m1.jpg"},
        {"label": "Team", "image": "assets/images/group.jpg"},
      ],
      "rooms": [
        {"label": "Operation Rebrand", "image": "assets/images/sync.jpg"},
        {"label": "Kick-off", "image": "assets/images/rocket.jpg"},
        {"label": "System Alerts", "image": "assets/images/alert.jpg"},
        {"label": "Our Map","image": "assets/images/map.jpg"},
        {"label": "Marketing", "image": "assets/images/group.jpg"},
      
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
