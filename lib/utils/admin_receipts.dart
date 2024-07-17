import 'package:flutter/material.dart';
import 'invoice_details.dart';

class AdminReceipts extends StatelessWidget {
  const AdminReceipts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Users' Receipts"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: 10, // Replace with the actual number of receipts
          itemBuilder: (context, index) {
            String userName = "User $index";
            String emailOrPhone = "user${index}@example.com";
            int licenseType = (index % 3) + 1;

            return ListTile(
              title: Text(userName),
              subtitle: Text(emailOrPhone),
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
