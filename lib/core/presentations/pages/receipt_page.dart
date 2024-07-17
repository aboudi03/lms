import 'package:flutter/material.dart';
import '../../widgets/receipt_widget.dart';

class ReceiptPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Receipt Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ReceiptWidget(isAdmin: false),
                  ),
                );
              },
              child: Text('User Receipt'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ReceiptWidget(isAdmin: true),
                  ),
                );
              },
              child: Text('Admin Receipt'),
            ),
          ],
        ),
      ),
    );
  }
}
