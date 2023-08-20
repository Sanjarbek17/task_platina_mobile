import 'dart:ui';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../providers/currency_provider.dart';
import '../providers/weather_provider.dart';
import '../widgets/other_widgets/daily_info.dart';

import '../constants/color_constants.dart';
import '../widgets/main_widgets/main_widgets.dart';
import '../widgets/other_widgets/curse_child.dart';
import '../widgets/other_widgets/weather_widget.dart';
import 'open_drawer.dart';

class MyHomePage extends StatefulWidget {
  static const routeName = "/home";

  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  int _selectedIndex = 0;

  bool isSearch = false;
  bool isCurse = false;
  bool isWeather = false;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => WeatherProvider(dio: Dio())),
        ChangeNotifierProvider(create: (context) => CurrencyProvider(dio: Dio())),
      ],
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: const Icon(Icons.menu), onPressed: toggleDrawer),
          title: SvgPicture.asset('assets/images/platina horizontal.svg'),
          elevation: 0.8,
          centerTitle: true,
          iconTheme: const IconThemeData(color: Color(0xFF1D3068)),
          actions: [
            InkWell(
              onTap: toggleSearch,
              child: SvgPicture.asset('assets/images/search_icon.svg'),
            ),
          ],
        ),
        body: Stack(
          children: [
            Scaffold(
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
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    DailyInfo(
                      curseToggle: curseToggle,
                      weatherToggle: weatherToggle,
                    ),
                    if (isWeather) const WeatherWidget(),
                    if (isCurse) const CurseChild(),
                    const NewsCatalog(),
                    const SizedBox(height: 16),
                    const AuthorNews(),
                    const SizedBox(height: 16),
                    const Articles(),
                    const SizedBox(height: 16),
                    const CategoryNews(),
                    const SizedBox(height: 16),
                    const BiznesNews(),
                    const SizedBox(height: 16),
                    const Footer(),
                  ],
                ),
              ),
              bottomNavigationBar: BottomNavigationBar(
                onTap: changeIndex,
                currentIndex: _selectedIndex,
                selectedItemColor: blue,
                unselectedItemColor: blue10,
                showUnselectedLabels: true,
                type: BottomNavigationBarType.fixed,
                unselectedLabelStyle: const TextStyle(color: blue10, fontSize: 12, fontFamily: 'SF Pro Display', fontWeight: FontWeight.w500),
                selectedLabelStyle: const TextStyle(color: blue, fontSize: 12, fontFamily: 'SF Pro Display', fontWeight: FontWeight.w600),
                items: [
                  BottomNavigationBarItem(icon: SvgPicture.asset('assets/images/home.svg', color: _selectedIndex == 0 ? blue : null), label: 'Asosiy'.tr),
                  BottomNavigationBarItem(icon: SvgPicture.asset('assets/images/lenta.svg', color: _selectedIndex == 1 ? blue : null), label: 'Lenta'.tr),
                  BottomNavigationBarItem(icon: SvgPicture.asset('assets/images/ommabop.svg', color: _selectedIndex == 2 ? blue : null), label: 'OmmaBop'.tr),
                  BottomNavigationBarItem(icon: SvgPicture.asset('assets/images/maqola.svg', color: _selectedIndex == 3 ? blue : null), label: 'Maqola'.tr),
                  BottomNavigationBarItem(icon: SvgPicture.asset('assets/images/video.svg', color: _selectedIndex == 4 ? blue : null), label: 'Video'.tr),
                ],
              ),
            ),
            if (isSearch)
              SearchWidget(
                tappedOutside: (p0) {
                  if (p0.position.dy > 60) {
                    setState(() {
                      isSearch = false;
                    });
                  }
                },
              ),
          ],
        ),
      ),
    );
  }

  void changeIndex(value) {
    setState(() {
      _selectedIndex = value;
    });
  }

  void toggleDrawer() {
    // open and close the drawer
    if (isSearch) {
      setState(() {
        isSearch = false;
      });
    }
    if (!_key.currentState!.isDrawerOpen) {
      _key.currentState!.openDrawer();
    } else {
      Navigator.of(_key.currentContext!).pop();
    }
  }

  void toggleSearch() {
    if (_key.currentState!.isDrawerOpen) {
      Navigator.of(_key.currentContext!).pop();
    }
    setState(() {
      isSearch = !isSearch;
    });
  }

  void curseToggle() {
    setState(() {
      isCurse = !isCurse;
      isWeather = false;
    });
  }

  void weatherToggle() {
    setState(() {
      isWeather = !isWeather;
      isCurse = false;
    });
  }
}
