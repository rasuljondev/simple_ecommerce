import 'package:ecommerse/k_padding.dart';
import 'package:flutter/material.dart';

// We need satefull widget for our categories

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    "Electronics",
    "Video Games",
    "Devices & Accessories",
    "Music",
    "Watches"
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: kPadding,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            categories.length,
            (index) => Padding(
              padding: EdgeInsets.only(
                  bottom: kPadding / 4,
                  top: kPadding / 4,
                  right: kPadding,
                  left: index == 0 ? kPadding : 0),
              child: ElevatedButton(
                style: ButtonStyle(
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    padding: WidgetStateProperty.all(
                      const EdgeInsets.all(
                        kPadding,
                      ),
                    ),
                    backgroundColor: WidgetStateProperty.all(
                        selectedIndex == index
                            ? Colors.white.withOpacity(0.8)
                            : Theme.of(context).colorScheme.secondary)),
                child: Text(
                  categories[index],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: selectedIndex == index
                        ? Theme.of(context).primaryColor
                        : Colors.black.withOpacity(0.3),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
