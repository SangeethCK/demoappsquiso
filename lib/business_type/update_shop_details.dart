import 'package:demoappsquiso/login/login.dart';
import 'package:flutter/material.dart';

class UpdateShopDetails extends StatelessWidget {
  const UpdateShopDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Center(
                child: Text(
              'Up Date Shop\n Details',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            )),
            const SizedBox(height: 60),
            Textfield(text: 'Open Time'),
            const SizedBox(height: 20),
            Textfield(text: 'Open Time'),
            const SizedBox(height: 20),
            Textfield(text: 'Google Location'),
          ],
        ),
      ),
    );
  }
}
