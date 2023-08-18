import 'package:flutter/material.dart';

import 'local_text.dart';

class LanguageWidget extends StatefulWidget {
  const LanguageWidget({
    super.key,
  });

  @override
  State<LanguageWidget> createState() => _LanguageWidgetState();
}

class _LanguageWidgetState extends State<LanguageWidget> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        LocalText(text: 'Ўзб', isSelected: selectedIndex == 0, onPressed: () => setState(() => selectedIndex = 0)),
        LocalText(text: 'O’zb', isSelected: selectedIndex == 3, onPressed: () => setState(() => selectedIndex = 3)),
        LocalText(text: 'Рус', isSelected: selectedIndex == 1, onPressed: () => setState(() => selectedIndex = 1)),
        LocalText(text: 'Eng', isSelected: selectedIndex == 2, onPressed: () => setState(() => selectedIndex = 2)),
      ],
    );
  }
}
