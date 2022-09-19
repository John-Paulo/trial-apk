import 'package:flutter/material.dart';
import 'package:nucleio_panda_ecommerce_v2/Screens/login_screen.dart';
import 'package:nucleio_panda_ecommerce_v2/Screens/order_screen.dart';
import 'package:nucleio_panda_ecommerce_v2/constats/color.dart';
import 'package:nucleio_panda_ecommerce_v2/constats/constants.dart';

import 'package:scrollable_list_tabview/scrollable_list_tabview.dart';

class DetailScreen extends StatefulWidget {
  final String name, image;
  const DetailScreen({
    Key? key,
    required this.name,
    required this.image,
  }) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                pinned: true,
                floating: false,
                snap: false,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  stretchModes: [StretchMode.blurBackground],
                  title: Text(
                    widget.name,
                    style: TextStyle(color: Color(0x66fff9e5)),
                    textAlign: TextAlign.left,
                  ),
                  background: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 200.0,
                        width: double.infinity,
                        color: Colors.grey,
                        child: Image(
                            fit: BoxFit.cover, image: AssetImage(widget.image)),
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.all(10.0),
                      //   child: Text(
                      //     widget.name,
                      //     style: TextStyle(fontSize: 25.0),
                      //     textAlign: TextAlign.left,
                      //   ),
                      // ),
                    ],
                  ),
                ),
                expandedHeight: 270.0,
              ),
            ];
          },
          body: ScrollableListTabView(
            tabHeight: 50,
            bodyAnimationDuration: const Duration(milliseconds: 800),
            tabAnimationCurve: Curves.ease,
            tabAnimationDuration: const Duration(milliseconds: 150),
            style:
                TextStyle(color: Colors.green, fontFamily: Bold, fontSize: 100),
            tabs: [
              ScrollableListTab(
                tab: const ListTab(
                    label: Text(
                      'Popular',
                      style: TextStyle(fontFamily: Bold),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    activeBackgroundColor: Color(0xffffcc00),
                    borderColor: Color(0xffffcc00)),
                body: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (_, index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        title: Text(
                          'Fruits',
                          style: const TextStyle(fontFamily: Bold),
                        ),
                        subtitle: Text("Apples, Bannana, Grapes and etc."),
                        trailing: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OrderScreen()));
                          },
                          child: Container(
                            height: 150.0,
                            width: 150.0,
                            alignment: Alignment.center,
                            child:
                                Image(image: AssetImage('assets/Fruits.jpg')),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0),
                            child: Text("Php. 120.00"),
                          ),
                          Container(
                            width: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xffeab676).withOpacity(0.5)),
                            child: Center(
                              child: Text(
                                '🔥 Recommended',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: blackColor,
                                    fontFamily: Medium),
                              ),
                            ),
                          )
                        ],
                      ),
                      Divider()
                    ],
                  ),
                ),
              ),
              ScrollableListTab(
                tab: const ListTab(
                  label: Text('Add-Ons'),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  activeBackgroundColor: Color(0xffffcc00),
                  borderColor: Color(0xffffcc00),
                  inactiveBackgroundColor: Colors.white,
                ),
                body: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (_, index) => Card(
                    child: Stack(
                      fit: StackFit.passthrough,
                      children: [
                        Image(
                          fit: BoxFit.fitHeight,
                          image: AssetImage('assets/beverage.jpg'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Beverages',
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.w100,
                                fontSize: 18,
                                fontFamily: Bold),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 10,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xfffffcff),
                                  borderRadius: BorderRadius.circular(20.0)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                child: Text(
                                  'Php. 180.00',
                                  style: TextStyle(
                                      color: blackColor,
                                      fontSize: 12,
                                      fontFamily: Bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
