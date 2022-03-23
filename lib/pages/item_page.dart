import 'package:flutter/material.dart';

import '../models/item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Item;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 47, 172, 67),
        title: Text('Shopping List'),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(args.image),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.only(top: 50)),
                Expanded(
                    child: Text(
                  args.name,
                  textAlign: TextAlign.end,
                )),
                Text(' with ', textAlign: TextAlign.center),
                Expanded(
                    child: Text(args.price.toString(),
                        textAlign: TextAlign.justify)),
              ],
            ),
            Ink(
              decoration: const ShapeDecoration(
                color: Color.fromARGB(255, 47, 172, 67),
                shape: CircleBorder(),
              ),
              child: IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(context)
                    ..removeCurrentSnackBar()
                    ..showSnackBar(SnackBar(content: Text(args.name)));
                },
                icon: Icon(
                  Icons.shopping_basket_outlined,
                  color: Colors.white,
                ),
                iconSize: 20.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
