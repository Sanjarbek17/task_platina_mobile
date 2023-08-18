import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'open_drawer.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: const Icon(Icons.menu), onPressed: toggleDrawer),
        title: SvgPicture.asset('assets/images/platina horizontal.svg'),
        elevation: 0.8,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Color(0xFF1D3068)),
        actions: [SvgPicture.asset('assets/images/search_icon.svg')],
      ),
      body: Scaffold(
        key: _key,
        drawerScrimColor: Color.fromARGB((255 * 0.6).toInt(), 29, 48, 104),
        drawer: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
          child: Drawer(
            width: MediaQuery.of(context).size.width * 0.7,
            child: const DrawerChild(),
          ),
        ),
        body: const Column(
          children: [
            Center(
              child: Text(
                'Hello, world!',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void toggleDrawer() {
    // open and close the drawer
    if (!_key.currentState!.isDrawerOpen) {
      _key.currentState!.openDrawer();
    } else {
      Navigator.of(_key.currentContext!).pop();
    }
  }
}
