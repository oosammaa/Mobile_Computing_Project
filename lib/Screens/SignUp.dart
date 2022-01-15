import 'package:bmi_analyzer/Model/User.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import 'CompleteSignUp.dart';
import 'Login.dart';

class SignUp extends StatefulWidget {
  static String id = 'SignUp';

  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _form = GlobalKey<FormState>();
  String _name = '';
  String _email = '';
  String _password = '';
  bool _passwordToggle = false;
  String _rePassword = '';
  bool _rePasswordToggle = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Analyzer"),
        titleTextStyle: TextStyle(fontWeight: FontWeight.bold),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                child: Text(
                  "Create New Account",
                  style: TextStyle(
                    color: mBlue,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 30),
                alignment: Alignment.center,
                child: Text(
                  "If you do not already have an account",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
              ),
              Form(
                key: _form,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.center,
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please fill this field!';
                          }
                          return null;
                        },
                        autofocus: true,
                        textInputAction: TextInputAction.next,
                        onSaved: (value) => _name = value!,
                        decoration: InputDecoration(
                          hintText: 'Name',
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.center,
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please fill this field!';
                          }
                          return null;
                        },
                        autofocus: true,
                        textInputAction: TextInputAction.next,
                        onSaved: (value) => _email = value!,
                        decoration: InputDecoration(
                          hintText: 'E-Mail',
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.center,
                        keyboardType: TextInputType.visiblePassword,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please fill this field!';
                          }
                          return null;
                        },
                        obscureText: !_passwordToggle,
                        autofocus: true,
                        textInputAction: TextInputAction.next,
                        onSaved: (value) => _password = value!,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _passwordToggle = !_passwordToggle;
                              });
                            },
                            icon: Icon(_passwordToggle
                                ? Icons.visibility_rounded
                                : Icons.visibility_off),
                            color:
                                Theme.of(context).accentColor.withOpacity(0.4),
                          ),
                          hintText: 'Password',
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 40, top: 5),
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.center,
                        keyboardType: TextInputType.visiblePassword,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please fill this field!';
                          }
                          return null;
                        },
                        obscureText: !_rePasswordToggle,
                        autofocus: true,
                        textInputAction: TextInputAction.done,
                        onSaved: (value) => _password = value!,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _rePasswordToggle = !_rePasswordToggle;
                              });
                            },
                            icon: Icon(_rePasswordToggle
                                ? Icons.visibility_rounded
                                : Icons.visibility_off),
                            color:
                                Theme.of(context).accentColor.withOpacity(0.4),
                          ),
                          hintText: 'Re-Password',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      if (_form.currentState!.validate()) {
                        if (doesPasswordsMatch(_password, _rePassword)) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Processing Data ..'),
                            duration: Duration(seconds: 3),
                          ));
                          _form.currentState!.save();
                          User.user.fullName = _name;
                          User.user.email = _email;
                          User.user.password = _password;
                          ScaffoldMessenger.of(context).hideCurrentSnackBar();
                          Navigator.pushReplacementNamed(
                              context, CompleteSignUp.id);
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content:
                                Text("Password and Re-Password doesn't match."),
                          ));
                        }
                      }
                    });
                  },
                  child: Text(
                    'CREATE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.0),
                      )),
                      backgroundColor: MaterialStateProperty.all<Color>(mBlue)),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("You Have An Account ?"),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, Login.id);
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(color: mBlue),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool doesPasswordsMatch(String password, String passwordConfirmation) {
    if (password == passwordConfirmation) {
      return true;
    }
    return false;
  }
}
