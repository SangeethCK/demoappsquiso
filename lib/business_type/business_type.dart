import 'package:demoappsquiso/business_type/company_address.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BusinessType extends StatelessWidget {
  const BusinessType({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'Select your business type',
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ),
              const SizedBox(height: 40),
              TypeOfBusiness(
                function: (() {
                  Get.to(const CompanyAddress());
                }),
                text: 'MANUFACTURE',
              ),
              const SizedBox(height: 40),
              TypeOfBusiness(
                function: (() {
                  Get.to(const CompanyAddress());
                }),
                text: 'SALES',
              ),
              const SizedBox(height: 40),
              TypeOfBusiness(
                function: (() {
                  Get.to(const CompanyAddress());
                }),
                text: 'SERVICE',
              ),
              const SizedBox(height: 40),
              TypeOfBusiness(
                function: (() {
                  Get.to(const CompanyAddress());
                }),
                text: 'TRADE',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class TypeOfBusiness extends StatelessWidget {
  String text;
  Function() function;
  TypeOfBusiness({Key? key, required this.text, required this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        height: 50,
        width: 340,
        decoration: BoxDecoration(
          color: Colors.green.shade300,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
            child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        )),
      ),
    );
  }
}
