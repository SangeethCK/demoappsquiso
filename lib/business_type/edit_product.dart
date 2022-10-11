import 'package:demoappsquiso/login/login.dart';
import 'package:flutter/material.dart';

class EditProduct extends StatelessWidget {
  const EditProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const Center(
                  child: Text('Edit Product',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 25))),
              Textfield(text: 'Select item category'),
              const SizedBox(height: 20),
              Textfield(text: 'Select product category'),
              const SizedBox(height: 20),
              Textfield(text: 'Company'),
              const SizedBox(height: 20),
              Textfield(text: 'Model'),
              const SizedBox(height: 20),
              Textfield(text: 'Qty'),
              const SizedBox(height: 20),
              Container(
                height: 90,
                width: 380,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(blurRadius: 4, color: Colors.grey.shade400)
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    label: Text(
                      'Description',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
              Textfield(text: 'Image'),
              const SizedBox(height: 20),
              Container(
                height: 40,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                    child: Text(
                  'Update',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
