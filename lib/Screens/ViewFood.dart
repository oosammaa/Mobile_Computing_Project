import 'package:flutter/material.dart';

import '../main.dart';

class ViewFood extends StatelessWidget {
  static String id = 'View Food';

  const ViewFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Analyzer"),
        titleTextStyle: TextStyle(fontWeight: FontWeight.bold),
        centerTitle: true,
      ),
      body: ViewFoodClass(),
    );
  }
}

class ViewFoodClass extends StatefulWidget {
  const ViewFoodClass({Key? key}) : super(key: key);

  @override
  _ViewFoodClassState createState() => _ViewFoodClassState();
}

class _ViewFoodClassState extends State<ViewFoodClass> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            margin: EdgeInsets.only(bottom: 50, top: 50),
            alignment: Alignment.center,
            child: Text(
              "View Food",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: mBlue,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 6,
          child: Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 40),
            padding: EdgeInsets.all(15),
            child: RawScrollbar(
              interactive: true,
              thumbColor: mBlue,
              radius: Radius.circular(10),
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  // final customer = mCustomers[index];
                  return Column(
                    children: [
                      Card(
                        elevation: 5,
                        color: Colors.transparent,
                        child: TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            shape:
                                MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.0),
                                side: BorderSide(
                                  color: mBlue,
                                  width: 1,
                                ),
                              ),
                            ),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                          ),
                          child: Container(
                            width: double.infinity,
                            height: 50,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Image.asset("images/logo.png"),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Food Name",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                                      Text("Food category",style: TextStyle(color: Colors.grey.shade700)),
                                      Text("Food calorie",style: TextStyle(color: Colors.grey.shade700)),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Expanded(
                                        flex: 5,
                                        child: TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            "Edit",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all<Color>(
                                                    mBlue),
                                            padding: MaterialStateProperty.all<
                                                EdgeInsets>(EdgeInsets.zero),
                                          ),
                                        ),
                                      ),
                                      Spacer(flex: 3),
                                      Expanded(
                                        flex: 4,
                                        child: Container(
                                          width: 20,
                                          decoration: BoxDecoration(
                                              color: mBlue,
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          alignment: Alignment.bottomRight,
                                          child: IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.close,
                                              color: Colors.white,
                                              size: 15,
                                            ),
                                            padding: EdgeInsets.zero,
                                            splashRadius: 15,
                                            alignment: Alignment.center,
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
                      SizedBox(height: 15,),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
        Spacer(),
      ],
    );
  }
}
