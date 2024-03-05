import 'package:character_animation/Pages/HomePage/home_page.dart';
import 'package:character_animation/utils/myrouts_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Pages/DetailPage/detail_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.red,
    ),
  );

  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ],
  );
  runApp(const character_animation());
}

class character_animation extends StatelessWidget {
  const character_animation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'HomePage',
      routes: {
        MyRoutes.HomePage: (context) => HomePage(),
        MyRoutes.DetailPage: (context) => DetailPage(),
      },
    );
  }
}
