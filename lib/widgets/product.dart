import 'package:flutter/material.dart';

import '../models/item.dart';

class Product extends StatelessWidget {
  const Product({
    Key? key,
    required this.items,
  }) : super(key: key);

  final List<Item> items;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(
        width: 400,
        child: ListView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/item',
                    arguments: item);
              },
              child: Card(
                child: Container(
                  margin: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Expanded(child: Image.asset(item.image)),
                      Expanded(
                          child: Column(
                        children: [
                          Text(item.name),
                          Padding(
                              padding: EdgeInsets.all(8),
                              child: Text(
                                item.price.toString(),
                                textAlign: TextAlign.end,
                              )),
                        ],
                      )),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}