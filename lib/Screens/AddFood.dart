import 'package:flutter/material.dart';

import '../main.dart';

class AddFood extends StatelessWidget {
  static String id = 'Add Food';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Analyzer"),
        titleTextStyle: TextStyle(fontWeight: FontWeight.bold),
        centerTitle: true,
      ),
      body: AddFoodClass(),
    );
  }
}

class AddFoodClass extends StatefulWidget {
  const AddFoodClass({Key? key}) : super(key: key);

  @override
  _AddFoodClassState createState() => _AddFoodClassState();
}

class _AddFoodClassState extends State<AddFoodClass> {
  final _form = GlobalKey<FormState>();
  final _form1 = GlobalKey<FormState>();
  String _foodName = '';
  String _category = 'Carbs';
  String _calory = '';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 50, top: 50),
            alignment: Alignment.center,
            child: Text(
              "Add Food Details",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: mBlue,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.only(left: 40),
                  child: Text(
                    "Name",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 18,
                        color: mBlue,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Spacer(),
              Expanded(
                flex: 5,
                child: Form(
                  key: _form,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      keyboardType: TextInputType.name,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please fill this field!';
                        }
                        return null;
                      },
                      autofocus: true,
                      textInputAction: TextInputAction.next,
                      // onChanged: (String value) {},
                      onSaved: (value) => _foodName = value!,
                      decoration: InputDecoration(
                        hintText: 'Food Name',
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: mBlue,
                            width: 1,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: mBlue,
                            width: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.only(left: 40),
                  child: Text(
                    "Category",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 18,
                        color: mBlue,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Spacer(),
              Expanded(
                flex: 5,
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: DropdownButtonFormField(
                    iconSize: 30,
                    icon: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          border: Border.all(width: 1, color: mBlue)),
                      child: Icon(
                        Icons.arrow_drop_down,
                        color: mBlue,
                      ),
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: mBlue,
                          width: 1,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 2,
                        ),
                      ),
                    ),
                    value: _category,
                    items: dropdownItems,
                    onChanged: (String? newValue) {
                      setState(() {
                        _category = newValue!;
                      });
                    },
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.only(left: 40),
                  child: Text(
                    "Calory",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 18,
                        color: mBlue,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Spacer(),
              Expanded(
                flex: 5,
                child: Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: Form(
                        key: _form1,
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: TextFormField(
                            textAlignVertical: TextAlignVertical.center,
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please fill this field!';
                              }
                              return null;
                            },
                            autofocus: true,
                            textInputAction: TextInputAction.done,
                            // onChanged: (String value) {},
                            onSaved: (value) => _foodName = value!,
                            decoration: InputDecoration(
                              hintText: 'Calorie',
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 10),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: mBlue,
                                  width: 1,
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: mBlue,
                                  width: 1,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 2,
                        child: Text(
                          'cal/g',
                          style: TextStyle(color: Colors.grey.shade700),
                        ))
                  ],
                ),
              ),
              Spacer(),
            ],
          ),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 40, top: 10,bottom: 5),
            child: Text(
              "Photo",
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 18, color: mBlue, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
              width: double.maxFinite,
              margin: EdgeInsets.symmetric(horizontal: 40),
              height: 200,
              child: Image.asset(
                "images/logo.png",
              )),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Spacer(flex: 1),
                Expanded(
                  flex: 4,
                  child: TextButton(
                    onPressed: () {
                      // Navigator.pushNamed(context, AddFood.id);
                    },
                    child: Text(
                      'Upload Photo',
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
                Expanded(
                  flex: 4,
                  child: TextButton(
                    onPressed: () {
                      // Navigator.pushNamed(context, AddRecord.id);
                    },
                    child: Text(
                      'Save',
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
        ],
      ),
    );
  }

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Carbs"), value: "Carbs"),
      DropdownMenuItem(child: Text("Protein"), value: "Protein"),
      DropdownMenuItem(child: Text("Sugars"), value: "Sugars"),
      DropdownMenuItem(child: Text("Fat"), value: "Fat"),
    ];
    return menuItems;
  }
}
