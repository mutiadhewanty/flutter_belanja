
import 'package:flutter/material.dart';

import '../models/item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Item;
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping List'),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(child: Text(args.name, textAlign: TextAlign.end,)),
            Text(' with ', textAlign: TextAlign.center),
            Expanded(child: Text(args.price.toString(), textAlign: TextAlign.justify))
          ],
        ),
      ),
    );
  }
}