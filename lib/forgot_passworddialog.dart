import 'package:flutter/material.dart';

class ForgotPasswordDialog extends StatelessWidget {
  const ForgotPasswordDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Forgot Password"),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            const Text(
                "Please enter your email address to reset your password."),
            const SizedBox(height: 16),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: const Text("Cancel"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        ElevatedButton(
          child: const Text("Submit"),
          onPressed: () {
            // Handle password reset logic
          },
        ),
      ],
    );
  }
}
