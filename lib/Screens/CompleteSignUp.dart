import 'package:bmi_analyzer/Screens/HomeScreen.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class CompleteSignUp extends StatefulWidget {
  static String id = 'Complete SignUp';

  const CompleteSignUp({Key? key}) : super(key: key);

  @override
  _CompleteSignUpState createState() => _CompleteSignUpState();
}

class _CompleteSignUpState extends State<CompleteSignUp> {
  final _form = GlobalKey<FormState>();
  final _form1 = GlobalKey<FormState>();
  final _form2 = GlobalKey<FormState>();
  final _form3 = GlobalKey<FormState>();
  String _name = '';
  String _email = '';
  String _password = '';
  bool _passwordToggle = false;
  String _rePassword = '';
  bool _rePasswordToggle = false;
  int _gender = 1;
  int _weight = 75;
  int _height = 175;
  DateTime selectedDate = DateTime.now();

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
                margin: EdgeInsets.only(bottom: 80, left: 40, right: 40),
                alignment: Alignment.center,
                child: Text(
                  "Complete Your Information",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: mBlue,
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Text(
                        "Gender",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontSize: 18,
                            color: mBlue,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Row(
                      children: [
                        VerticalDivider(
                          width: 50,
                        ),
                        Expanded(
                          flex: 1,
                          child: ListTile(
                            contentPadding: EdgeInsets.zero,
                            horizontalTitleGap: 0,
                            minVerticalPadding: 0,
                            title: Text(
                              'Male',
                              style: TextStyle(
                                fontSize: 15,
                                color: mBlue,
                              ),
                            ),
                            leading: Radio(
                              value: 1,
                              groupValue: _gender,
                              onChanged: (value) {
                                setState(() {
                                  _gender = 1;
                                });
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: ListTile(
                            contentPadding: EdgeInsets.zero,
                            horizontalTitleGap: 0,
                            minVerticalPadding: 0,
                            minLeadingWidth: 0,
                            title: Text(
                              'Female',
                              style: TextStyle(fontSize: 15, color: mBlue),
                            ),
                            leading: Radio(
                              value: 2,
                              groupValue: _gender,
                              onChanged: (value) {
                                setState(() {
                                  _gender = 2;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Text(
                        "Weight",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontSize: 18,
                            color: mBlue,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Row(
                      children: [
                        VerticalDivider(
                          width: 50,
                        ),
                        Expanded(
                          flex: 3,
                          child: ListTile(
                            contentPadding: EdgeInsets.zero,
                            horizontalTitleGap: 0,
                            minVerticalPadding: 0,
                            title: Text(
                              _weight.toString(),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                color: mBlue,
                              ),
                            ),
                            leading: IconButton(
                              onPressed: () {
                                setState(() {
                                  _weight++;
                                });
                              },
                              padding: EdgeInsets.zero,
                              splashRadius: 20,
                              icon: Icon(
                                Icons.add_box_outlined,
                                color: mBlue,
                              ),
                            ),
                            trailing: IconButton(
                              onPressed: () {
                                setState(() {
                                  _weight--;
                                });
                              },
                              padding: EdgeInsets.zero,
                              splashRadius: 20,
                              icon: Icon(
                                Icons.indeterminate_check_box_outlined,
                                color: mBlue,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "kg",
                            style: TextStyle(color: mBlue),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Text(
                        "Length",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontSize: 18,
                            color: mBlue,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Row(
                      children: [
                        VerticalDivider(
                          width: 50,
                        ),
                        Expanded(
                          flex: 3,
                          child: ListTile(
                            contentPadding: EdgeInsets.zero,
                            horizontalTitleGap: 0,
                            minVerticalPadding: 0,
                            title: Text(
                              _height.toString(),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                color: mBlue,
                              ),
                            ),
                            leading: IconButton(
                              onPressed: () {
                                setState(() {
                                  _height++;
                                });
                              },
                              padding: EdgeInsets.zero,
                              splashRadius: 20,
                              icon: Icon(
                                Icons.add_box_outlined,
                                color: mBlue,
                              ),
                            ),
                            trailing: IconButton(
                              onPressed: () {
                                setState(() {
                                  _height--;
                                });
                              },
                              padding: EdgeInsets.zero,
                              splashRadius: 20,
                              icon: Icon(
                                Icons.indeterminate_check_box_outlined,
                                color: mBlue,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "cm",
                            style: TextStyle(color: mBlue),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      child: Text(
                        "Date Of Birth",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontSize: 15,
                            color: mBlue,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Row(
                      children: [
                        VerticalDivider(
                          width: 33,
                        ),
                        Expanded(
                          flex: 5,
                          child: TextButton(
                            style: ButtonStyle(
                                shape:
                                    MaterialStateProperty.all<OutlinedBorder>(
                                  RoundedRectangleBorder(
                                    side: BorderSide(color: mBlue),
                                  ),
                                ),
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                    EdgeInsets.zero),
                                tapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap),
                            onPressed: () => _selectDate(context),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('${selectedDate.toLocal()}'.split(' ')[0]),
                                Icon(
                                  Icons.date_range,
                                  color: mBlue,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(top: 80, left: 50, right: 50),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, HomeScreen.id);
                  },
                  child: Text(
                    'Save Data',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
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
            ],
          ),
        ),
      ),
    );
  }

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1950, 1),
        lastDate: DateTime.now());
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }
}
