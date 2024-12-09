import 'package:ecommerse/k_padding.dart';
import 'package:ecommerse/models/product_item.dart';
import 'package:flutter/material.dart';

class ECommerceItem extends StatelessWidget {
  final ProductItem? item;
  final GestureTapCallback?
      onPressed; // Changed from Function? to GestureTapCallback?
  final bool selected;

  const ECommerceItem({
    super.key,
    this.item,
    this.onPressed,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed, // Now this matches the expected type.
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
              child: Container(
            padding: const EdgeInsets.all(kPadding),
            height: 180,
            width: 160,
            decoration: BoxDecoration(
              color: selected
                  ? Theme.of(context).primaryColor
                  : Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(4, 4),
                  blurRadius: 5,
                  color: Colors.black.withOpacity(0.2),
                ),
              ],
            ),
            child: Hero(
              tag: "${item?.uid}",
              child: Image.asset(
                item!.image,
                fit: BoxFit.contain,
              ),
            ),
          )),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kPadding / 4),
            child: Text(
              item!.title,
              style: TextStyle(color: Colors.black.withOpacity(0.5)),
            ),
          ),
          Text(
            "\$ ${item?.amount}",
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: kPadding / 2,
          )
        ],
      ),
    );
  }
}
