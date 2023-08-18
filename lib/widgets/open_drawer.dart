import 'package:flutter/material.dart';

import 'category_builder.dart';

class DrawerChild extends StatefulWidget {
  const DrawerChild({
    super.key,
  });

  @override
  State<DrawerChild> createState() => _DrawerChildState();
}

class _DrawerChildState extends State<DrawerChild> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [CategoryBuilder()],
      ),
    );
  }
}
