import 'package:bmi_analyzer/Screens/AddRecord.dart';
import 'package:bmi_analyzer/Screens/Login.dart';
import 'package:bmi_analyzer/main.dart';
import 'package:flutter/material.dart';

import 'AddFood.dart';
import 'ViewFood.dart';

class HomeScreen extends StatelessWidget {
  static String id = 'Home Screen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Analyzer"),
        titleTextStyle: TextStyle(fontWeight: FontWeight.bold),
        centerTitle: true,
      ),
      body: HomeScreenClass(),
    );
  }
}

class HomeScreenClass extends StatefulWidget {
  const HomeScreenClass({Key? key}) : super(key: key);

  @override
  _HomeScreenClassState createState() => _HomeScreenClassState();
}

class _HomeScreenClassState extends State<HomeScreenClass> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.center,
            child: Text(
              "Hi, Mohammed",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            child: Text(
              "Current Status",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: mBlue,
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(
              horizontal: 40,
            ),
            padding: EdgeInsets.all(
              15,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: mBlue,
              ),
            ),
            child: Text(
              "Normal (Still Good)",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            child: Text(
              "Old Status",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: mBlue,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(
              horizontal: 40,
            ),
            padding: EdgeInsets.all(
              15,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: mBlue,
              border: Border.all(
                color: mBlue,
              ),
            ),
            child: RawScrollbar(
              interactive: true,
              thumbColor: Colors.white,
              radius: Radius.circular(10),
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  // final customer = mCustomers[index];
                  return Material(
                    color: mBlue,
                    elevation: 5,
                    child: Card(
                      child: TextButton(
                        onPressed: () {},
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          child: Column(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "20/1/2020",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                    VerticalDivider(
                                      width: 3,
                                      color: mBlue,
                                    ),
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "60 kg",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(height: 3, color: mBlue),
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Normal",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                    VerticalDivider(
                                      width: 3,
                                      color: mBlue,
                                    ),
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "170 cm",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Spacer(flex: 1),
              Expanded(
                flex: 4,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AddFood.id);
                  },
                  child: Text(
                    'Add Food',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(mBlue),
                  ),
                ),
              ),
              Spacer(flex: 1),
              Expanded(
                flex: 4,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AddRecord.id);
                  },
                  child: Text(
                    'Add Record',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
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
              Spacer(flex: 1),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 8),
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, ViewFood.id);
              },
              child: Text(
                'View Food',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
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
        ),
        Expanded(
          flex: 1,
          child: Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 8),
            child: TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, Login.id);
              },
              child: Text(
                'Logout',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
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
        ),
      ],
    );
  }
}
