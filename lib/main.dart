import 'package:ecommerse/widget_tree.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sellar eCommerce',
      theme: ThemeData(
          primaryColor: const Color(0xFF283C63),
          hintColor: const Color(0xFFE7E9F5),
          iconTheme: IconThemeData(color: Colors.black.withOpacity(0.4))),
      home: const WidgetTree(),
    );
  }
}
