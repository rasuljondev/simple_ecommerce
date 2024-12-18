import 'package:ecommerse/eCommerce/e_com_drawer.dart';
import 'package:ecommerse/eCommerce/e_com_item_description.dart';
import 'package:ecommerse/eCommerce/e_com_items.dart';
import 'package:ecommerse/responsive_layout.dart';
import 'package:flutter/material.dart';

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: ResponsiveLayout(
        iphone: const ECommerceItems(),
        ipad: const Row(
          children: [
            Expanded(
              flex: 9,
              child: ECommerceItems(),
            ),
            Expanded(
              flex: 9,
              child: ECommerceItemDescription(),
            ),
          ],
        ),
        macbook: Row(
          children: [
            Expanded(
              flex: size.width > 1340 ? 3 : 5,
              child: const ECommerceItems(),
            ),
            Expanded(
              flex: size.width > 1340 ? 8 : 10,
              child: const ECommerceItemDescription(),
            ),
            Expanded(
              flex: size.width > 1340 ? 2 : 4,
              child: const ECommerceDrawer(),
            ),
          ],
        ),
      ),
    );
  }
}
