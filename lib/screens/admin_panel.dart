import 'package:flutter/material.dart';
import '../utils/admin_create_user.dart';
import '../utils/admin_receipts.dart';

class AdminPanel extends StatelessWidget {
  const AdminPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Admin Panel"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50, // Adjust height as needed
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AdminCreateUser()),
                  );
                },
                child: const Text("Add Users"),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 50, // Adjust height as needed
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AdminReceipts()),
                  );
                },
                child: const Text("Review Users Receipts"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
