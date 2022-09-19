import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('YOUR CART '),
      ),
      body: Column(children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 300,
                width: 600,
                color: Colors.orange,
                alignment: Alignment.center,
                child: const Text(
                  'You have not added anything yet!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
