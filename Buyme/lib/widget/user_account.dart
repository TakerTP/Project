import 'package:buyme/widget/user_account/account_setting.dart';
import 'package:buyme/widget/user_account/payment_methods.dart';
import 'package:buyme/widget/user_account/delivery_location.dart';
import 'package:buyme/widget/user_account/orders.dart';
import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          // user profile
          ListTile(
            leading: const Image(
              image: AssetImage('assets/image/user_account/user_profile.png'),
            ),
            title: const Padding(
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: Text(
                'Steve Roger',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            onTap: () {},
            subtitle: Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Text(
                '012 245 892',
                style: TextStyle(
                    color: Colors.grey.shade400,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ),
            contentPadding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
          ),

          // my orders
          ListTile(
            leading: const Image(
                image: AssetImage('assets/image/user_account/orders.png')),
            title: const Text(
              'Orders',
              style: TextStyle(fontSize: 16),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Orders()));
            },
            contentPadding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
          ),

          // delivery location
          ListTile(
            leading: const Image(
                image: AssetImage(
                    'assets/image/user_account/delivery_address.png')),
            title: const Text(
              'Delivery Location',
              style: TextStyle(fontSize: 16),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DeliveryLocation()));
            },
            contentPadding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
          ),

          //payment methods
          ListTile(
            leading: const Image(
                image: AssetImage('assets/image/user_account/payment.png')),
            title: const Text(
              'Payment Methods',
              style: TextStyle(fontSize: 16),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PaymentMethods()));
            },
            contentPadding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
          ),

          // account setting
          ListTile(
            leading: const Image(
                image: AssetImage(
                    'assets/image/user_account/account_setting.png')),
            title: const Text(
              'Account Setting',
              style: TextStyle(fontSize: 16),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AccountSetting()));
            },
            contentPadding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
          ),

          // logout
          ListTile(
            leading: const Image(
                image: AssetImage('assets/image/user_account/logout.png')),
            title: const Text(
              'Logout',
              style: TextStyle(fontSize: 16),
            ),
            onTap: () {},
            contentPadding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
          ),
        ],
      ),
    );
  }
}
