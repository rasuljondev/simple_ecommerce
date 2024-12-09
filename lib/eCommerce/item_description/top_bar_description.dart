import 'package:ecommerse/k_padding.dart';
import 'package:flutter/material.dart';

class TopBarDescription extends StatelessWidget {
  const TopBarDescription({super.key});

  //The Top Bar over the description page

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kPadding),
      child: Row(
        children: [
          /*  if (ResponsiveLayout.isIphone(context)) BackButton(),
          if (ResponsiveLayout.isMacbook(context))
            IconButton(
              icon: Icon(
                Icons.print_outlined,
                color: Theme.of(context).iconTheme.color,
              ),
              onPressed: () {},
            ), */
          const Spacer(),
          ConstrainedBox(
            constraints: const BoxConstraints.tightFor(
              width: 100,
            ),
            child: ElevatedButton(
              style: ButtonStyle(
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  padding: WidgetStateProperty.all(
                    const EdgeInsets.symmetric(
                      vertical: kPadding,
                    ),
                  ),
                  backgroundColor: WidgetStateProperty.all(
                      Theme.of(context).colorScheme.secondary)),
              child: Text(
                "Add to Cart",
                style: TextStyle(color: Colors.black.withOpacity(0.8)),
              ),
              onPressed: () {},
            ),
          ),
          const SizedBox(width: kPadding),
          ConstrainedBox(
            constraints: const BoxConstraints.tightFor(
              width: 100,
            ),
            child: ElevatedButton(
              style: ButtonStyle(
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  padding: WidgetStateProperty.all(
                    const EdgeInsets.symmetric(
                      vertical: kPadding,
                    ),
                  ),
                  backgroundColor:
                      WidgetStateProperty.all(Theme.of(context).primaryColor)),
              child: const Text(
                "Buy Now",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
