import 'package:flutter/material.dart';
import 'package:module10/vertical_view.dart';

import 'horizontal_view.dart';
class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return LayoutBuilder(
            builder: (context, constraints) {
              if (orientation == Orientation.portrait) {
                // Vertical View
                return buildVerticalLayout(constraints,context);
              } else {
                // Horizontal View
                return buildHorizontalLayout(constraints,context);
              }
            },
          );
        },
      ),
    );
  }
}
