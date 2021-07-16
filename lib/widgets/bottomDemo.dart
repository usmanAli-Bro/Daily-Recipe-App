import 'package:daily_receip/widgets/buttons.dart';
import 'package:flutter/material.dart';

class DemoBottomSheet extends StatefulWidget {
  const DemoBottomSheet({Key key}) : super(key: key);

  @override
  State<DemoBottomSheet> createState() => _DemoBottomSheetState();
}

class _DemoBottomSheetState extends State<DemoBottomSheet> {
  RangeValues values = RangeValues(1, 100);
  RangeLabels rglabel = RangeLabels("1", "100");

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return DraggableScrollableSheet(
        maxChildSize: 0.9,
        initialChildSize: 0.7,
        minChildSize: 0.3,
        builder: (context, controller) {
          return Scaffold(
            backgroundColor: Colors.transparent,
            body: Container(
              margin: EdgeInsets.only(top: 20.0),
              padding: EdgeInsets.only(top: 20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0)),
                color: Colors.white,
              ),
              child: ListView(
                physics: BouncingScrollPhysics(),
                // shrinkWrap: true,
                controller: controller,
                padding: EdgeInsets.only(
                  left: 15.0,
                  right: 15.0,
                ),
                // mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: Container(
                      width: 90.0,
                      height: 5.0,
                      color: Colors.grey[200],
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Filter",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Expanded(
                          child: SizedBox(
                        width: double.infinity,
                      )),
                      Text(
                        "Reset",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      Text(
                        "Meal",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  // displaying buttons section 1
                  SizedBox(
                    height: 10.0,
                  ),
                  Wrap(
                    runSpacing: 10.0,
                    spacing: 10.0,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 80,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.orange.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.red)),
                        child: Text(
                          "Breakfast",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 80,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10),
                          // border: Border.all(color: Colors.blueAccent)
                        ),
                        child: Text(
                          "Brunch",
                          textAlign: TextAlign.center,
                          style: TextStyle(),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 80,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10),
                          // border: Border.all(color: Colors.blueAccent)
                        ),
                        child: Text(
                          "Lunch",
                          textAlign: TextAlign.center,
                          style: TextStyle(),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 80,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10),
                          // border: Border.all(color: Colors.red)
                        ),
                        child: Text(
                          "Dinner",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  // SizedBox(
                  //   height: 10.0,
                  // ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //   ],
                  // ),
                  // displaying second ROW OF BUTTONS
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Cources",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Expanded(
                          child: SizedBox(
                        width: double.infinity,
                      )),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  // displaying Lower buttons
                  Wrap(
                    spacing: 20.0,
                    runSpacing: 10.0,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 80,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.orange.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.red)),
                        child: Text(
                          "Soup",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 80,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10),
                          // border: Border.all(color: Colors.grey)
                        ),
                        child: Text(
                          "Appetzer",
                          textAlign: TextAlign.center,
                          style: TextStyle(),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 80,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10),
                          // border: Border.all(color: Colors.grey)
                        ),
                        child: Text(
                          "Starter",
                          textAlign: TextAlign.center,
                          style: TextStyle(),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 80,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10),
                          // border: Border.all(color: Colors.grey[100])
                        ),
                        child: Text(
                          "Main Dish",
                          textAlign: TextAlign.center,
                          style: TextStyle(),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 80,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10),
                          // border: Border.all(color: Colors.grey)
                        ),
                        child: Text(
                          "Side",
                          textAlign: TextAlign.center,
                          style: TextStyle(),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 80,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10),
                          // border: Border.all(color: Colors.grey)
                        ),
                        child: Text(
                          "Dessert",
                          textAlign: TextAlign.center,
                          style: TextStyle(),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 80,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10),
                          // border: Border.all(color: Colors.grey)
                        ),
                        child: Text(
                          "Drink",
                          textAlign: TextAlign.center,
                          style: TextStyle(),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),

                  SizedBox(
                    height: 5,
                  ),
                  Divider(
                    height: 10,
                  ),
                  //displaying volume button
                  Row(
                    children: [
                      Text(
                        "Serving",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Expanded(
                          child: SizedBox(
                        width: double.infinity,
                      )),
                      Text(
                        "Set Manuallay",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  RangeSlider(
                      activeColor: Colors.orange,
                      min: 1,
                      max: 100,
                      values: values,
                      labels: rglabel,
                      divisions: 5,
                      onChanged: (value) {
                        setState(() {
                          values = value;
                          rglabel = RangeLabels(value.start.toInt().toString(),
                              value.end.toInt().toString());
                        });
                      }),
                  Divider(
                    height: 10,
                  ),
                  //displaying volume button
                  Row(
                    children: [
                      Text(
                        "Preparing Time",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Expanded(
                          child: SizedBox(
                        width: double.infinity,
                      )),
                      Text(
                        "Set Manuallay",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  RangeSlider(
                      activeColor: Colors.orange,
                      min: 1,
                      max: 100,
                      values: values,
                      labels: rglabel,
                      divisions: 5,
                      onChanged: (value) {
                        setState(() {
                          values = value;
                          rglabel = RangeLabels(value.start.toInt().toString(),
                              value.end.toInt().toString());
                        });
                      }),
                  Row(
                    children: [
                      Text(
                        "Calories",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Expanded(
                          child: SizedBox(
                        width: double.infinity,
                      )),
                      Text(
                        "Set Manually",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  RangeSlider(
                      activeColor: Colors.orange,
                      min: 1,
                      max: 100,
                      values: values,
                      labels: rglabel,
                      divisions: 5,
                      onChanged: (value) {
                        setState(() {
                          values = value;
                          rglabel = RangeLabels(value.start.toInt().toString(),
                              value.end.toInt().toString());
                        });
                      }),
                  SizedBox(
                    height: 20.0,
                  ),
                  // Buttonchk(getText: "Apply")
                  // FloatingActionButton(
                  //   onPressed: () {},
                  //   child: Text("Apply"),
                  //   backgroundColor: Colors.orange,
                  //   materialTapTargetSize: ,
                  // )
                ],
              ),
            ),
            floatingActionButton: RawMaterialButton(
              onPressed: () {},
              child: Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.orange,
                  ),
                  height: 50.0,
                  alignment: Alignment.center,
                  width: width * 0.9,
                  child: Text(
                    "Apply", style: TextStyle(color: Colors.white),
                    // color: Colors.white
                    // fontSize: 16.0,
                    // height: 1.5,
                  ),
                ),
              ),
            ),
          );
        });
  }
}
