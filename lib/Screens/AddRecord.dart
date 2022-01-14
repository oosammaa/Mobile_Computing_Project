import 'package:flutter/material.dart';

import '../main.dart';
import 'HomeScreen.dart';

class AddRecord extends StatelessWidget {
  static String id = 'Add Record';

  const AddRecord({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Analyzer"),
        titleTextStyle: TextStyle(fontWeight: FontWeight.bold),
        centerTitle: true,
      ),
      body: AddRecordClass(),
    );
  }
}

class AddRecordClass extends StatefulWidget {
  const AddRecordClass({Key? key}) : super(key: key);

  @override
  _AddRecordClassState createState() => _AddRecordClassState();
}

class _AddRecordClassState extends State<AddRecordClass> {
  int _weight = 75;
  int _height = 175;
  DateTime _selectedDate = DateTime.now();
  String? _selectedTime;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 80, left: 40, right: 40),
              alignment: Alignment.center,
              child: Text(
                "New Record",
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
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(left: 40),
                    child: Text(
                      "Weight",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 18,
                          color: mBlue,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Row(
                    children: [
                      VerticalDivider(
                        width: 40,
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
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(left: 40),
                    child: Text(
                      "Length",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 18,
                          color: mBlue,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Row(
                    children: [
                      VerticalDivider(
                        width: 40,
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
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(left: 40),
                    child: Text(
                      "Date",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 18,
                          color: mBlue,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Row(
                    children: [
                      VerticalDivider(
                        width: 50,
                      ),
                      Expanded(
                        flex: 5,
                        child: TextButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<OutlinedBorder>(
                                RoundedRectangleBorder(
                                  side: BorderSide(color: mBlue),
                                ),
                              ),
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.zero),
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                          onPressed: () => _selectDate(context),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('${_selectedDate.toLocal()}'.split(' ')[0]),
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
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(left: 40),
                    child: Text(
                      "Time",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 18,
                          color: mBlue,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Row(
                    children: [
                      VerticalDivider(
                        width: 50,
                      ),
                      Expanded(
                        flex: 5,
                        child: TextButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<OutlinedBorder>(
                                RoundedRectangleBorder(
                                  side: BorderSide(color: mBlue),
                                ),
                              ),
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.zero),
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                          onPressed: () => _showTime(),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(_selectedTime != null
                                  ? _selectedTime!
                                  : TimeOfDay.now().format(context)),
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
              margin: EdgeInsets.only(top: 80, left: 50, right: 50,bottom: 60),
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
    );
  }

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: _selectedDate,
        firstDate: DateTime(1950, 1),
        lastDate: DateTime.now());
    if (picked != null && picked != _selectedDate)
      setState(() {
        _selectedDate = picked;
      });
  }

  Future<void> _showTime() async {
    final TimeOfDay? result =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());
    if (result != null) {
      setState(() {
        _selectedTime = result.format(context);
      });
    }
  }
}
