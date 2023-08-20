
import 'package:flutter/material.dart';

class SmallPlaceholder extends StatelessWidget {
  const SmallPlaceholder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width - 150,
              height: 15,
              decoration: BoxDecoration(
                // color: Colors.grey,
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: MediaQuery.of(context).size.width - 150,
              height: 15,
              decoration: BoxDecoration(
                // color: Colors.grey,
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: MediaQuery.of(context).size.width - 150,
              height: 15,
              decoration: BoxDecoration(
                // color: Colors.grey,
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ],
        ),
        const SizedBox(width: 15),
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            // color: Colors.grey,
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ],
    );
  }
}
