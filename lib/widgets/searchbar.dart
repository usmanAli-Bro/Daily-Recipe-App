import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(30)),
            child: Form(
                child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      fillColor: Colors.grey,
                      //labelText: "Search for receive",
                      hintText: "Search for receive",
                      prefixIcon: Icon(Icons.search)),
                )
              ],
            )),
          ),
        ),
        // IconButton(onPressed: (){}, icon: Icon(Icons.tune_sharp))
        //  ElevatedButton(onPressed: (){},
        //  child: Icon(Icons.tune_sharp,color: Colors.black,),
        //  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.grey[200]),),)
        SizedBox(
          width: 5.0,
        ),
        InkWell(
          onTap: () {}, //ending bottom sheet
          child: Container(
            width: 40.0,
            height: 40.0,
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10)),
            child: Icon(Icons.tune_sharp),
          ),
        )
      ],
    );
  }
}
