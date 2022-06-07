import 'package:buyme/widget/user_account.dart';
import 'package:flutter/material.dart';

import 'orders/orders_card.dart';

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 0,
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            leading: Builder(builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context,
                      MaterialPageRoute(builder: (context) => const Account()));
                },
              );
            }),
            backgroundColor: Colors.white,
            elevation: 0,
            title: SizedBox(
              child: Row(
                children: const [
                  SizedBox(
                    child: Icon(Icons.shopping_bag, color: Colors.black),
                    width: 40,
                  ),
                  Text(
                    'Orders',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            bottom: PreferredSize(
              preferredSize: const Size(100, 50),
              child: SizedBox(
                height: 40,
                child: TabBar(
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.green[400]),
                  indicatorColor: Colors.green,
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                  tabs: const <Widget>[
                    Tab(text: "Processing"),
                    Tab(text: 'Delivered'),
                    Tab(text: 'Cancelled')
                  ],
                ),
              ),
            ),
          ),
          body: TabBarView(children: <Widget>[
            OrdersCard(),
            Column(
              children: const <Widget>[
                Image(image: AssetImage('assets/image/longan-1.jpg'))
              ],
            ),
            Text('tesing')
            // ProcessingTab(),
            // DeliveredTab(),
            // Cancelled(),
          ]),
        ));
  }

//   TabBar(
//     indicatorColor: Colors.green,
//     labelColor: Colors.black,
//     tabs: [
//       Tab(text: 'Processing'),
//       Tab(text: 'Delivered'),
//       Tab(
//         text: 'Cancelled',
//       )
//     ],
//   ));
//   }
// }

// class Categories extends StatefulWidget {
//   const Categories({Key? key}) : super(key: key);

//   @override
//   _CategoriesState createState() => _CategoriesState();
// }

// class _CategoriesState extends State<Categories> {
//   List<String> categories = ['Processing', 'Delivered', 'Cancelled'];
//   int selectedIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 25,
//       child: ListView.builder(
//         scrollDirection: Axis.horizontal,
//         itemCount: categories.length,
//         itemBuilder: (context, index) => buildCategories(index)),
//     );
//   }

//   Widget buildCategories(int index) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 8),
//       child: Text(
//           categories[index]),
//     );
//   }
// }
}
