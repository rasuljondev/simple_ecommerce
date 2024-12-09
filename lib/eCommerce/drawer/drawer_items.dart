import 'package:ecommerse/k_padding.dart';
import 'package:flutter/material.dart';

import 'badge.dart' as custom;

class DrawerItems extends StatelessWidget {
  //This is for each item in the Drawer

  final bool selected;
  final int number;
  final IconData icon;
  final String title;
  final VoidCallback onPressed;

  const DrawerItems({
    super.key,
    this.selected = false,
    this.number = 0, // Provide a default value for `number`
    required this.icon,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: (selected)
                ? Theme.of(context).primaryColor.withOpacity(0.9)
                : Colors.transparent,
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: kPadding / 2),
            child: InkWell(
              onTap: onPressed,
              child: Row(
                children: [
                  const SizedBox(width: kPadding / 3),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(bottom: 15, right: 5),
                      child: Row(
                        children: [
                          Icon(
                            icon,
                            color: (selected)
                                ? Colors.white
                                : Theme.of(context).iconTheme.color,
                          ),
                          const SizedBox(width: kPadding * 0.75),
                          Text(
                            title,
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      color: (selected)
                                          ? Colors.white
                                          : Colors.black.withOpacity(0.5),
                                    ),
                          ),
                          const Spacer(),
                          custom.Badge(
                              number:
                                  number) // Badge now works with default `number`
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const Divider()
      ],
    );
  }
}
