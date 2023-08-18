// ignore_for_file: deprecated_member_use

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_platina_mobile/widgets/main_widgets/biznes_news.dart';
import 'package:task_platina_mobile/widgets/main_widgets/category_new.dart';

import '../constants/color_constants.dart';
import '../widgets/main_widgets/articles.dart';
import '../widgets/main_widgets/author_news.dart';
import '../widgets/main_widgets/footer.dart';
import '../widgets/main_widgets/news_catalog.dart';
import 'open_drawer.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  int _selectedIndex = 0;

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
            width: MediaQuery.of(context).size.width * 0.67,
            child: const DrawerChild(),
          ),
        ),
        backgroundColor: bg,
        body: const SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 16),
              NewsCatalog(),
              SizedBox(height: 16),
              AuthorNews(),
              SizedBox(height: 16),
              Articles(),
              SizedBox(height: 16),
              CategoryNews(),
              SizedBox(height: 16),
              BiznesNews(),
              SizedBox(height: 16),
              Footer(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              _selectedIndex = value;
            });
          },
          currentIndex: _selectedIndex,
          selectedItemColor: blue,
          unselectedItemColor: blue10,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          unselectedLabelStyle: const TextStyle(color: blue10, fontSize: 12, fontFamily: 'SF Pro Display', fontWeight: FontWeight.w500),
          selectedLabelStyle: const TextStyle(color: blue, fontSize: 12, fontFamily: 'SF Pro Display', fontWeight: FontWeight.w600),
          items: [
            BottomNavigationBarItem(icon: SvgPicture.asset('assets/images/home.svg', color: _selectedIndex == 0 ? blue : null), label: 'Асосий'),
            BottomNavigationBarItem(icon: SvgPicture.asset('assets/images/lenta.svg', color: _selectedIndex == 1 ? blue : null), label: 'Лента'),
            BottomNavigationBarItem(icon: SvgPicture.asset('assets/images/ommabop.svg', color: _selectedIndex == 2 ? blue : null), label: 'Оммабоп'),
            BottomNavigationBarItem(icon: SvgPicture.asset('assets/images/maqola.svg', color: _selectedIndex == 3 ? blue : null), label: 'Мақола'),
            BottomNavigationBarItem(icon: SvgPicture.asset('assets/images/video.svg', color: _selectedIndex == 4 ? blue : null), label: 'Видео'),
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
