import 'package:flutter/material.dart';

class Receipt {
  final String userName;
  final String userContact;
  final String date;
  final String number;
  final List<Map<String, String>> items;

  Receipt(this.userName, this.userContact, this.date, this.number, this.items);
}

class ReceiptWidget extends StatelessWidget {
  final bool isAdmin;
  final List<Receipt> dummyReceipts = [
    Receipt("John Doe", "johndoe@example.com", "2023-07-01", "12345", [
      {"item": "Item 1", "price": "\$10"},
      {"item": "Item 2", "price": "\$20"},
    ]),
    Receipt("Jane Smith", "janesmith@example.com", "2023-07-02", "67890", [
      {"item": "Item A", "price": "\$15"},
      {"item": "Item B", "price": "\$25"},
    ]),
  ];

  ReceiptWidget({required this.isAdmin});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Receipts'),
      ),
      body: ListView.builder(
        itemCount: dummyReceipts.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(dummyReceipts[index].userName),
              subtitle: Text(isAdmin
                  ? dummyReceipts[index].userContact
                  : dummyReceipts[index].date),
              onTap: () {
                _showReceiptDialog(context, dummyReceipts[index]);
              },
            ),
          );
        },
      ),
    );
  }

  void _showReceiptDialog(BuildContext context, Receipt receipt) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(receipt.userName),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Contact: ${receipt.userContact}'),
                Text('Date: ${receipt.date}'),
                Text('Receipt Number: ${receipt.number}'),
                Text('Items:'),
                ...receipt.items
                    .map((item) => Text('${item["item"]}: ${item["price"]}'))
                    .toList(),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
