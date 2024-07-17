import 'package:flutter/material.dart';
import 'invoice_details.dart';

class UserReceiptPage extends StatelessWidget {
  const UserReceiptPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Receipts"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: 5, // Replace with the actual number of user receipts
          itemBuilder: (context, index) {
            String userName = "User";
            String emailOrPhone = "user@example.com";
            int licenseType = (index % 3) + 1;

            return ListTile(
              title: Text("Receipt $index"),
              subtitle: Text("Details of receipt $index"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => InvoiceDetails(
                      userName: userName,
                      emailOrPhone: emailOrPhone,
                      licenseType: licenseType,
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
