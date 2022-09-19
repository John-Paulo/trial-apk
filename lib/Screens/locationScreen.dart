import 'package:flutter/material.dart';
import 'package:nucleio_panda_ecommerce_v2/Screens/cart.dart';
import 'package:nucleio_panda_ecommerce_v2/Screens/home.dart';
import 'package:nucleio_panda_ecommerce_v2/Screens/welcome.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  final GlobalKey<ScaffoldState> _key =
      GlobalKey(); // for opening drawermenu purpose as of yet.

  bool isOnline = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => WelcomeScreen(),
              ),
            );
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Center(
          child: Text(
            'Nucleio-Mart',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Image.asset(
              'assets/map.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ],
        ),
      ),
    );
  }
}
