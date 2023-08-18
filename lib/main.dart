import 'package:flutter/material.dart';
import 'package:task_platina_mobile/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
        primarySwatch: const MaterialColor(
          0xFF1D3068,
          <int, Color>{
            50: Color(0xFFE3E7F1),
            100: Color(0xFFBFC9E3),
            200: Color(0xFF9BA9D4),
            300: Color(0xFF7789C6),
            400: Color(0xFF5D72BC),
            500: Color(0xFF434BB1),
            600: Color(0xFF3D44A4),
            700: Color(0xFF353C8F),
            800: Color(0xFF2D347A),
            900: Color(0xFF242B65),
          },
        ),
      ),
      home: const MyHomePage(),
    );
  }
}
