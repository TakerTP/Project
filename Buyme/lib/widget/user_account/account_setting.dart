import 'package:flutter/material.dart';

import '../user_account.dart';

class AccountSetting extends StatelessWidget {
  const AccountSetting ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.push(context,
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
                child: Image(
                    image: AssetImage('assets/image/user_account/account_setting.png')),
                width: 35,
              ),
              Text(
                'Account Setting',
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
        ),
      ),
    );
  }
}