import 'package:bmi_analyzer/Firebase/Authentication.dart';
import 'package:bmi_analyzer/Firebase/LoginValidation.dart';
import 'package:bmi_analyzer/Model/User.dart';
import 'package:bmi_analyzer/Screens/SignUp.dart';
import 'package:bmi_analyzer/main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  static String id = 'Login';

  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _form = GlobalKey<FormState>();
  String _username = '';
  bool passwordToggle = false;
  String _password = '';

  @override
  Widget build(BuildContext context) {
    final authentication = Provider.of<Authentication>(context);
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
                  "Welcome Back",
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
                  "If you already have an account, log in",
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
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.center,
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'Please fill this field!';
                          }
                          return null;
                        },
                        autofocus: true,
                        textInputAction: TextInputAction.next,
                        onSaved: (value) => _username = value!,
                        decoration: InputDecoration(
                          hintText: 'Username',
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 40),
                      padding: const EdgeInsets.all(16),
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.center,
                        keyboardType: TextInputType.visiblePassword,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please fill this field!';
                          }
                          return null;
                        },
                        obscureText: !passwordToggle,
                        autofocus: true,
                        textInputAction: TextInputAction.done,
                        // onChanged: (String value) {},
                        onSaved: (value) => _password = value!,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                passwordToggle = !passwordToggle;
                              });
                            },
                            icon: Icon(passwordToggle
                                ? Icons.visibility_rounded
                                : Icons.visibility_off),
                            color: Theme.of(context).accentColor.withOpacity(0.4),
                          ),
                          hintText: 'Password',
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
                        _form.currentState!.save();
                        User _user=User.loginWithEmail(_username, _password);
                        LoginValidation()
                            .emailLoginValidation(context, _user,authentication);
                      }
                    });
                  },
                  child: Text(
                    'LOG IN',
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
                  Text("You Don't Have An Account ?"),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, SignUp.id);
                      },
                      child: Text(
                        "Sign Up",
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
}
