import 'package:buyme/widget/user_account.dart';
import 'package:buyme/widget/delivery.dart';
import 'package:buyme/widget/explore.dart';
import 'package:buyme/widget/favorite.dart';
import 'package:buyme/widget/home.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> navList = const [
    Home(),
    Explore(),
    Favorite(),
    Delivery(),
    Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navList.elementAt(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.green.shade600,
        unselectedItemColor: Colors.green.withOpacity(.50),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(title: Text('Home'), icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              title: Text('Explore'), icon: Icon(Icons.search)),
          BottomNavigationBarItem(
              title: Text('Favorite'), icon: Icon(Icons.favorite)),
          BottomNavigationBarItem(
              title: Text('Delivery'), icon: Icon(Icons.delivery_dining)),
          BottomNavigationBarItem(
              title: Text('Account'), icon: Icon(Icons.account_circle)),
        ],
      ),
    );
  }
}
