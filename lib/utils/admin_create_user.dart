import 'package:flutter/material.dart';

class AdminCreateUser extends StatefulWidget {
  const AdminCreateUser({super.key});

  @override
  _AdminCreateUserState createState() => _AdminCreateUserState();
}

class _AdminCreateUserState extends State<AdminCreateUser> {
  String? _selectedLicense;
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Perform create user action
      print("Name: ${_nameController.text}");
      print("Email: ${_emailController.text}");
      print("Phone: ${_phoneController.text}");
      print("License: $_selectedLicense");
      // You can add logic to handle user creation here
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Admin Create User"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                    labelText: 'Full Name',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _phoneController,
                  decoration: const InputDecoration(
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your phone number';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _passwordController,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _confirmPasswordController,
                  decoration: const InputDecoration(
                    labelText: 'Confirm Password',
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please confirm your password';
                    }
                    if (value != _passwordController.text) {
                      return 'Passwords do not match';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                DropdownButtonFormField<String>(
                  value: _selectedLicense,
                  items: [
                    DropdownMenuItem(
                      value: "License 1",
                      child: Text("License 1"),
                    ),
                    DropdownMenuItem(
                      value: "License 2",
                      child: Text("License 2"),
                    ),
                    DropdownMenuItem(
                      value: "License 3",
                      child: Text("License 3"),
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      _selectedLicense = value;
                    });
                  },
                  decoration: const InputDecoration(
                    labelText: 'Select License',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null) {
                      return 'Please select a license';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 32),
                ElevatedButton(
                  onPressed: _submitForm,
                  child: const Text('Create User'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
