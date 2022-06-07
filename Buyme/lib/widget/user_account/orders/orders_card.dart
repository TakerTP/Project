import 'package:flutter/material.dart';

class OrdersCard extends StatelessWidget {
  const OrdersCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          ListTile(
            title: const Text('Order ID: 100069'),
            subtitle: Text(
              'Secondary Text',
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.start,
            children: [
              FlatButton(
                textColor: Colors.black,
                onPressed: () {
                  // Perform some action
                },
                child: const Text('Details'),
              ),
              FlatButton(
                textColor: Colors.black,
                onPressed: () {
                  // Perform some action
                },
                child: const Text('Tracking'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
