import 'package:flutter/material.dart';

class ContactUsScreen extends StatelessWidget {
  final String contactNumber;

  const ContactUsScreen({
    super.key,
    required this.contactNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Contact Us Screen"),
      ),
      body: Center(
        child: Text(contactNumber),
      ),
    );
  }
}
