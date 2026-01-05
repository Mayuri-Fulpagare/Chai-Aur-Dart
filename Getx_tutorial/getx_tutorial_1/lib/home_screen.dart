import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Getx Tutorials')),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text('GetX Dialog Alert Example'),
              subtitle: Text('GetX dialog alert with GetX'),
              onTap: () {
                Get.defaultDialog(
                  title: 'GetX Dialog',
                  middleText: 'This is a GetX dialog alert example',
                  titlePadding: EdgeInsets.all(20),
                  contentPadding: EdgeInsets.all(20),
                  textCancel: 'Cancel',
                  textConfirm: 'Confirm',
                  onCancel: () {
                    Get.back();
                    print('Dialog Cancelled');
                  },
                  onConfirm: () {
                    Get.back();
                    print('Dialog Confirmed');
                  },
                );
              },
            ),
          ),

          Card(
            child: ListTile(
              title: Text('GetX bottomsheet Example'),
              subtitle: Text('GetX bottomsheet with GetX'),
              onTap: () {
                Get.bottomSheet(
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    height: 400,
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.light_mode),
                          title: Text('Theme Light Mode'),
                          onTap: () {
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.dark_mode),
                          title: Text('Theme Dark Mode'),
                          onTap: () {
                            Get.changeTheme(ThemeData.dark());
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
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
