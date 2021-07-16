import 'package:daily_receip/widgets/buttons.dart';
import 'package:flutter/material.dart';

class bottomshhet1 extends StatefulWidget {
  const bottomshhet1({Key key}) : super(key: key);

  @override
  _bottomshhet1State createState() => _bottomshhet1State();
}

class _bottomshhet1State extends State<bottomshhet1> {
  RangeValues values = RangeValues(1, 100);
  RangeLabels rglabel = RangeLabels("1", "100");
  @override
  Widget build(BuildContext context) {
    double rating;
    return ListView(
      padding: EdgeInsets.only(
        left: 15.0,
        right: 15.0,
      ),
      // mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
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
        Buttonchk(getText: "Apply"),
      ],
    );
  }
}
