import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:task_platina_mobile/controllers/language_controller.dart';
import 'package:task_platina_mobile/core/utils/messages.dart';

import 'bindings.dart';
import 'constants/app_constants.dart';
import 'container_injection.dart';
import 'core/network/rest_client.dart';
import 'pages/home_page.dart';

typedef Dict = Map<String, Map<String, String>>;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Dict languages = await init();
  await initServices();
  await initializeDateFormatting();
  runApp(MyApp(languages: languages));
}

Future<void> initServices() async {
  Get.lazyPut<RestClient>(() => RestClient().init());
}

class MyApp extends StatelessWidget {
  final Dict languages;
  const MyApp({
    super.key,
    required this.languages,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LocalizationController>(builder: (controller) {
      return GetMaterialApp(
        title: 'Platina',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
          primarySwatch: const MaterialColor(0xFF1D3068, <int, Color>{50: Color(0xFFE3E7F1), 100: Color(0xFFBFC9E3), 200: Color(0xFF9BA9D4), 300: Color(0xFF7789C6), 400: Color(0xFF5D72BC), 500: Color(0xFF434BB1), 600: Color(0xFF3D44A4), 700: Color(0xFF353C8F), 800: Color(0xFF2D347A), 900: Color(0xFF242B65)}),
        ),
        locale: controller.locale,
        translations: Messages(languages: languages),
        fallbackLocale: Locale(AppConstants.languages[0].languageCode, AppConstants.languages[0].countryCode),
        initialRoute: MyHomePage.routeName,
        getPages: [
          GetPage(
            name: MyHomePage.routeName,
            page: () => const MyHomePage(),
            binding: HomeBinding(),
          ),
        ],
      );
    });
  }
}
