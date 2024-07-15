import 'package:flutter/material.dart';

class InvoiceDetails extends StatelessWidget {
  final String userName;
  final String emailOrPhone;
  final int licenseType;

  const InvoiceDetails({
    super.key,
    required this.userName,
    required this.emailOrPhone,
    required this.licenseType,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Invoice Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "User Name: $userName",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              "Email/Phone: $emailOrPhone",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text(
              "License Type: License $licenseType",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            const Text("Invoice Details:"),
            // Add more detailed invoice data here
          ],
        ),
      ),
    );
  }
}
