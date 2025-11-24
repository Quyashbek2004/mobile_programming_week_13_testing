import 'package:flutter/material.dart';

void main() => runApp(const LoginApp());

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: LoginScreen());
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final keyForm = GlobalKey<FormState>();
  bool canSubmit = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: keyForm,
        onChanged: () {
          setState(() {
            canSubmit = keyForm.currentState!.validate();
          });
        },
        child: Column(
          children: [
            TextFormField(
              key: const Key('emailField'),
              validator: (v) {
                if (v == null || v.isEmpty) return 'Required';
                if (!v.contains('@')) return 'Invalid email';
                return null;
              },
            ),
            TextFormField(
              key: const Key('passwordField'),
              validator: (v) => v == null || v.isEmpty ? 'Required' : null,
            ),
            ElevatedButton(
              key: const Key('submitBtn'),
              onPressed: canSubmit ? () {} : null,
              child: const Text("Submit"),
            )
          ],
        ),
      ),
    );
  }
}
