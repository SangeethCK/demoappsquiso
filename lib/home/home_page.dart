import 'package:demoappsquiso/business_type/add_product.dart';
import 'package:demoappsquiso/business_type/edit_product.dart';
import 'package:demoappsquiso/business_type/update_shop_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 140,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade300,
                                // offset: Offset(1, 5),
                                blurRadius: 5)
                          ],
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                          child: Text(
                        'Shope\nImage',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                    ),
                    const SizedBox(width: 30),
                    const Text('Shope Name',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    const SizedBox(height: 40),
                    CardWidgets(
                      getFunction: () {
                        Get.to(() => const AddProduct());
                      },
                      function: () {
                        Get.to(() => const UpdateShopDetails());
                      },
                      text1: 'Up date Shope Details',
                      text2: 'Add Products',
                    ),
                    const SizedBox(height: 40),
                    CardWidgets(
                      getFunction: () {},
                      function: () {
                        Get.to(() => const EditProduct());
                      },
                      text1: 'Edit Product',
                      text2: 'Show Product',
                    ),
                    const SizedBox(height: 40),
                    CardWidgets(
                      getFunction: () {},
                      function: () {},
                      text1: 'Show Order',
                      text2: 'Share Company',
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
              Container(
                height: 70,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(color: Colors.grey, blurRadius: 5)
                    ],
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Text(
                    'Admin Notification Flash',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class CardWidgets extends StatelessWidget {
  String text1;
  String text2;
  Function() function;
  Function() getFunction;
  CardWidgets(
      {Key? key,
      required this.text1,
      required this.text2,
      required this.function,
      required this.getFunction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: function,
          child: Container(
            height: 100,
            width: 170,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 5)],
                borderRadius: BorderRadius.circular(10)),
            child: Center(
                child: Text(
              text1,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
          ),
        ),
        const SizedBox(width: 30),
        InkWell(
          onTap: getFunction,
          child: Container(
            height: 100,
            width: 170,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 5)],
                borderRadius: BorderRadius.circular(10)),
            child: Center(
                child: Text(
              text2,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
          ),
        ),
      ],
    );
  }
}
