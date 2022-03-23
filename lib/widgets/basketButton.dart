import 'package:flutter/material.dart';

import '../models/item.dart';

class BasketButton extends StatelessWidget {
  const BasketButton({
    Key? key,
    required this.args,
  }) : super(key: key);

  final Item args;

  @override
  Widget build(BuildContext context) {
    return Ink(
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
    );
  }
}
