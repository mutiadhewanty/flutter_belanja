import 'package:flutter/material.dart';
import 'package:flutter_belanja/models/item.dart';

import '../widgets/product.dart';
import '../widgets/searching.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'Sugar', price: 15000, image: 'assets/sugar.jpg'),
    Item(name: 'Salt', price: 10000, image: 'assets/salt.jpeg'),
    Item(name: 'Flour', price: 25000, image: 'assets/flour.jpeg'),
  ];
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.blueGrey.shade50,
        body: SingleChildScrollView(
          child: Container(
            child: SafeArea(
                child: Row(
              children: [
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 45),
                      child: Text(
                        'Shopping List',
                        style: TextStyle(
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w900,
                            fontSize: 28,
                            color: Colors.black87),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 6),
                      child: Text(
                        'Today, 2pm - 5pm',
                        style: TextStyle(
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: Colors.black38),
                      ),
                    ),
                    Searching(),
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 30),
                      child: Text(
                        'Product',
                        style: TextStyle(
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: Colors.black87),
                      ),
                    ),
                    Product(items: items)
                  ],
                )),
                Padding(
                  padding: EdgeInsets.only(bottom: 600, right: 45),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://wallpapercave.com/wp/wp8356814.jpg'),
                  ),
                ),
              ],
            )),
          ),
        ));
  }
}



