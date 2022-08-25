import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  static const routeName = '/profileScreen';

  bool isDarkTheme = false;

  void changeTheme(theme) {
    if (theme == false) {
      //TODO: init Light Theme
    } else {
      //TODO: init Dark Theme
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            isDarkTheme = !isDarkTheme;
            changeTheme(isDarkTheme);
          },
          child: const Text('Change App Theme'),
        ),
      ),
    );
  }
}
