import 'package:flutter/material.dart';

import 'cure_widget.dart';

class CurseChild extends StatelessWidget {
  const CurseChild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.only(bottom: 16.0),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CurseWidget(),
          CurseWidget(),
        ],
      ),
    );
  }
}
