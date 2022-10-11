import 'package:demoappsquiso/home/home_page.dart';
import 'package:demoappsquiso/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CompanyAddress extends StatelessWidget {
  const CompanyAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 50,
                width: 380,
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(color: Colors.grey, blurRadius: 5)
                    ],
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(15)),
                child: const TextField(
                  decoration: InputDecoration(
                      label: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'COMPANY NAME',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      border: InputBorder.none),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Textfield(text: 'Contact Number'),
            const SizedBox(height: 20),
            Textfield(text: 'User Name'),
            const SizedBox(height: 20),
            Textfield(text: 'Password'),
            const SizedBox(height: 20),
            Textfield(text: 'Email'),
            const SizedBox(height: 10),
            Textfield(text: 'Panchayath/Muncipality'),
            const SizedBox(height: 10),
            Textfield(text: 'District'),
            const SizedBox(height: 10),
            Textfield(text: 'State'),
            const SizedBox(height: 10),
            Textfield(text: 'Country'),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                Get.to(() => const HomePage());
                alertBox(context);
              },
              child: Container(
                height: 40,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                    child: Text(
                  'Submit',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void alertBox(BuildContext context) {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => const AlertDialog(
        title: Text(
          'Your Registration Process Completed with 24 hour',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        content: Text('Your Account Will be activated',
            style: TextStyle(fontWeight: FontWeight.bold)),
        actions: <Widget>[],
      ),
    );
  }
}
