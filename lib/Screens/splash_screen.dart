import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nucleio_panda_ecommerce_v2/Screens/home.dart';
import 'package:nucleio_panda_ecommerce_v2/Screens/login_screen.dart';
import 'package:nucleio_panda_ecommerce_v2/constats/color.dart';
import 'package:nucleio_panda_ecommerce_v2/Screens/welcome.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(
        Duration(seconds: 3),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 241, 241, 229),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/nucleiotech.png'))),
          ),
          Positioned(
              bottom: 50,
              child: CupertinoActivityIndicator(
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
