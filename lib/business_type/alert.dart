import 'package:flutter/material.dart';

class AlertBox extends StatelessWidget {
  const AlertBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AlertDialog(
            title:
                const Text('Your Registration Process Completed with 24 hour'),
            content: const Text('Your Account Will be activated'),
            actions: <Widget>[
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: Theme.of(context).textTheme.labelLarge,
                ),
                child: const Text('Disable'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          )
        ],
      ),
    );
  }

  void _getAlert() {
    Future.delayed(Duration(seconds: 10));
    
  }
}
