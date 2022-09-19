import 'package:flutter/material.dart';
import 'package:nucleio_panda_ecommerce_v2/Screens/locationscreen.dart';
import 'package:nucleio_panda_ecommerce_v2/Screens/order_screen.dart';
import 'package:nucleio_panda_ecommerce_v2/constats/color.dart';
import 'package:nucleio_panda_ecommerce_v2/constats/constants.dart';
import 'package:nucleio_panda_ecommerce_v2/Screens/splash_screen.dart';
import 'package:nucleio_panda_ecommerce_v2/Screens/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData.dark(),
      theme: ThemeData(
          primarySwatch: MyColors.navy,
          brightness: Brightness.light,
          scaffoldBackgroundColor: const Color(0xfffcfcfc),
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.white,
              elevation: .2,
              titleTextStyle:
                  TextStyle(fontFamily: Bold, color: Color(0xff323232)),
              iconTheme: IconThemeData(color: MyColors.primaryColor))),
      darkTheme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: MyColors.navy,
          scaffoldBackgroundColor: const Color(0xfffcfcfc),
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.white,
              elevation: .2,
              titleTextStyle:
                  TextStyle(fontFamily: Bold, color: Color(0xff323232)),
              iconTheme: IconThemeData(color: MyColors.primaryColor))),
      home: SplashScreen(),
    );
  }
}
