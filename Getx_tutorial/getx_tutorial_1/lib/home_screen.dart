import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial_1/main.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx Tutorials'),
      ),
      body: Column(
        children: [
          Text('Home Screen'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar(
            'Hello',
            'This is a Getx snackbar',
            snackPosition: SnackPosition.TOP,
            icon: Icon(Icons.notification_add, color: Colors.white),
            backgroundColor: const Color.fromARGB(255, 192, 176, 218),
            onTap: (snack) {
              TextButton( 
                onPressed: () {
                  print('Snackbar button pressed');
                },
                child: Text('Click Me'),
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}