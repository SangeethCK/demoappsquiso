import 'package:demoappsquiso/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final hight = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // const SizedBox(height: 20),
          Center(
            child: SizedBox(
                height: hight * .70,
                width: width * .90,
                child: Image.asset(
                    'assets/images/Digital transformation-bro.png')),
          ),
          // const Spacer(),
          InkWell(
            onTap: () {
              Get.to(() => const LoginPage());
            },
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.green.shade300,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Center(
                  child: Text(
                'Select Langauge',
                style: TextStyle(color: Colors.white),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
