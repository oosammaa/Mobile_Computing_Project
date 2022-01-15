import 'package:bmi_analyzer/Model/User.dart';
import 'package:bmi_analyzer/Screens/AddFood.dart';
import 'package:bmi_analyzer/Screens/CompleteSignUp.dart';
import 'package:bmi_analyzer/Screens/LandingScreen.dart';
import 'package:bmi_analyzer/Screens/Login.dart';
import 'package:bmi_analyzer/Screens/SignUp.dart';
import 'package:bmi_analyzer/Screens/ViewFood.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Firebase/Authentication.dart';
import 'Screens/AddRecord.dart';
import 'Screens/HomeScreen.dart';

Future <void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

final Color mBlue = Color(0xff0B85D8);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<Authentication>(
          create: (_) => Authentication(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: mBlue,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: LandingScreen.id,
        routes: {
          LandingScreen.id: (context) => LandingScreen(),
          Login.id: (context) => Login(),
          SignUp.id: (context) => SignUp(),
          CompleteSignUp.id: (context) => CompleteSignUp(),
          HomeScreen.id: (context) => HomeScreen(),
          AddRecord.id: (context) => AddRecord(),
          AddFood.id: (context) => AddFood(),
          ViewFood.id: (context) => ViewFood(),
        },
      ),
    );
  }
}
