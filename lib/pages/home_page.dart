import 'package:flutter/material.dart';
import 'package:flutter_belanja/models/item.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
        name: 'Sugar',
        price: 5000,
        image:
            'https://tse3.mm.bing.net/th?id=OIP.4jUiNr1qmV-Pqs3KKdvRBgHaHa&pid=Api&P=0&w=166&h=166'),
    Item(
        name: 'Salt',
        price: 2000,
        image:
            'https://tse4.mm.bing.net/th?id=OIP.BDMDcrJnaqlxZ-zSjm5SeQHaHa&pid=Api&P=0&w=215&h=215'),
  ];
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey.shade50,
        body: Container(
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
                  Padding(
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
                  ),
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
                  Padding(
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
                                    Expanded(child: Text(item.name)),
                                    Expanded(
                                        child: Text(
                                      item.price.toString(),
                                      textAlign: TextAlign.end,
                                    )),
                                    Column(
                                      children: [
                                       
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  )
                ],
              )),
              Padding(
                padding: EdgeInsets.only(bottom: 515, right: 45),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://wallpapercave.com/wp/wp8356814.jpg'),
                ),
              ),
            ],
          )),
        ));
  }
}
