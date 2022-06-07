import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          flexibleSpace: const Image(
            image: AssetImage('assets/image/carrot.png'),
          ),
          centerTitle: true,
          title: Container(
            padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
            child: Text('Phnom Penh , Cambodia',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.bold,
                )),
          )),
      body: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.fromLTRB(30, 20, 30, 0),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: const TextField(
              decoration: InputDecoration(
                  focusColor: Colors.green,
                  prefixIcon: Icon(
                    Icons.search,
                    size: 30,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  hintText: 'Search Store',
                  contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  hintStyle: TextStyle(
                    fontSize: 17,
                  )),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(30, 20, 30, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Exclusive Offer',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Container(
                  child: Text(
                    'See all',
                    style:
                        TextStyle(fontSize: 10, color: Colors.green.shade400),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
