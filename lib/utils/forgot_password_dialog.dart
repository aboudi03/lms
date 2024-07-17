import 'package:flutter/material.dart';

class ForgotPasswordDialog extends StatefulWidget {
  @override
  _ForgotPasswordDialogState createState() => _ForgotPasswordDialogState();
}

class _ForgotPasswordDialogState extends State<ForgotPasswordDialog> {
  final TextEditingController _emailController = TextEditingController();
  bool _isButtonDisabled = false;

  void _sendConfirmationEmail() {
    setState(() {
      _isButtonDisabled = true;
    });

    // Simulate sending confirmation email
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _isButtonDisabled = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Forgot Password"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TextField(
            controller: _emailController,
            decoration: InputDecoration(
              labelText: 'Email',
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text("Cancel"),
        ),
        ElevatedButton(
          onPressed: _isButtonDisabled
              ? null
              : () {
                  _sendConfirmationEmail();
                },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.disabled)) {
                  return Colors.grey; // Disabled color
                }
                return Colors.blue; // Enabled color
              },
            ),
          ),
          child: _isButtonDisabled
              ? Text("Check Your Email")
              : Text("Send Confirmation Email"),
        ),
      ],
    );
  }
}
