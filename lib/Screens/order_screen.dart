import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nucleio_panda_ecommerce_v2/Screens/cart.dart';
import 'package:nucleio_panda_ecommerce_v2/compnents/app_bar.dart';
import 'package:nucleio_panda_ecommerce_v2/compnents/item_image.dart';
import 'package:nucleio_panda_ecommerce_v2/compnents/title_price.dart';
import 'package:nucleio_panda_ecommerce_v2/main.dart';

class OrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffe57f),
      appBar: AppBar(title: Text('Catalogs')),
      body: Title(),
    );
  }
}

class Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        ItemImage(
          imgSrc: "assets/Fruits.jpg",
        ),
        Expanded(
          child: ItemInfo(),
        )
      ],
    );
  }
}

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: <Widget>[
          Location(name: "Batangas"),
          TitlePriceRating(),
          Text(
            "Fruits are important sources of vitamins and carbohydrates like fiber and sugar. They are low in calories and naturally sweet. Fruits and their juices are good sources of water, too. Different fruits contain different vitamins, so it is important to eat a variety of fruits. Mangoes, papayas, melons and citrus fruits, like oranges and grapefruit, are high in vitamin C. Cantaloupe, apricots, peaches, and nectarines are sources of vitamin A. ",
            style: TextStyle(
              height: 1.8,
            ),
          ),
          SizedBox(height: size.height * 0.059),
          pressButton(size: size)
        ],
      ),
    );
  }

  Row Location({required String name}) {
    return Row(
      children: <Widget>[
        Icon(
          Icons.location_on,
          color: Colors.grey,
        ),
        SizedBox(width: 10),
        Text(name),
      ],
    );
  }
}

class pressButton extends StatelessWidget {
  const pressButton({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => CartScreen()));
          },
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.shopping_bag_outlined),
                SizedBox(width: 10),
                Text(
                  "Buy Now!",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
