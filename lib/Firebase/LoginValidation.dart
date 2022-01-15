import 'package:bmi_analyzer/Firebase/Authentication.dart';
import 'package:bmi_analyzer/Model/User.dart';
import 'package:bmi_analyzer/Screens/HomeScreen.dart';
import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart' as auth;

class LoginValidation {
  emailLoginValidation(context, User _user, authentication) async {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('Processing Data ..'),
      duration: Duration(seconds: 3),
    ));

    try {
      await authentication.loginWithEmail(_user.email, _user.password)!;
      print('Success');
      await Future.delayed(Duration(seconds: 2));
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
      Navigator.pushNamedAndRemoveUntil(
          context, HomeScreen.id, (Route<dynamic> route) => false);
    } on auth.FirebaseAuthException catch (e) {
      if (e.code == "user-not-found") {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('No such User with this Email, please SignUp!'),
        ));
      } else if (e.code == "wrong-password") {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Email and Password doesn't match."),
        ));
      } else if (e.code == "invalid-email") {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Please Enter a valid Email!"),
        ));
      } else {
        print("something else");
        print(e.code);
      }
    }
  }

  signUpValidation(context, User _user,Authentication authentication) async {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('Processing Data ..'),
      duration: Duration(seconds: 3),
    ));
    try {
      await authentication.signupWithEmail(_user.email, _user.password)!;
      print('Success');
      await Future.delayed(Duration(seconds: 2));
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
      Navigator.pushNamedAndRemoveUntil(
          context, HomeScreen.id, (Route<dynamic> route) => false);
    } on auth.FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Error!" + e.code),
      ));
    }
  }
}
