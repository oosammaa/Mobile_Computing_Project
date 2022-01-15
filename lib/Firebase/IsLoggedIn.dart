import 'package:bmi_analyzer/Model/User.dart';
import 'package:bmi_analyzer/Screens/HomeScreen.dart';
import 'package:bmi_analyzer/Screens/Login.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Authentication.dart';

class IsLoggedIn extends StatelessWidget {
  const IsLoggedIn({Key? key}) : super(key: key);

  static String id = 'IsLoggedIn';

  @override
  Widget build(BuildContext context) {
    final authentication = Provider.of<Authentication>(context);
    return StreamBuilder(
      stream: authentication.user,
      builder: (_, AsyncSnapshot<User?> snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          return snapshot.data == null ? Login() : HomeScreen();
        } else {
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}