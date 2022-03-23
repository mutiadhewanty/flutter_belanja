
import 'package:flutter/material.dart';

class Searching extends StatelessWidget {
  const Searching({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        top: 30,
      ),
      child: Center(
          child: TextField(
        decoration: InputDecoration(
            hintText: 'Search',
            prefixIcon: Icon(Icons.search),
            contentPadding: const EdgeInsets.all(15),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10))),
      )),
    );
  }
}
