import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nucleio_panda_ecommerce_v2/Screens/welcome.dart';

AppBar OrderAppBar() {
  return AppBar(
    elevation: 4,
    leading: InkWell(
      child: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.yellow,
        ),
        onPressed: () {},
      ),
    ),
    actions: <Widget>[
      IconButton(
        icon: SvgPicture.asset(
          "assets/icon/share.svg",
          color: Colors.yellow,
        ),
        onPressed: () {},
      ),
      IconButton(
        icon: SvgPicture.asset(
          "assets/icon/more.svg",
          color: Colors.yellow,
        ),
        onPressed: () {},
      ),
    ],
  );
}
