import 'package:daily_receip/screen/apphome.dart';
import 'package:daily_receip/screen/drawer.dart';
import 'package:daily_receip/widgets/searchbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swipe_action_cell/flutter_swipe_action_cell.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class NotificationAction extends StatelessWidget {
  const NotificationAction({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => MyDrawer()),
                  (route) => false);
              // push(
              //  context, MaterialPageRoute(builder: (context) => MyDrawer()));
            },
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            )),
        // title: Text(
        //   "Apps",
        //   style: TextStyle(color: Colors.black),
        // ),
        // centerTitle: true,
      ),
      body: NotifyActionClass(),
    );
  }
}

class NotifyActionClass extends StatelessWidget {
  const NotifyActionClass({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              MySearchBar(),
              SizedBox(
                height: 20.0,
              ),
              Slidable(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  width: 380.0,
                  height: 90.0,
                  // color: Colors.red,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.grey[100]),
                  child: Row(
                    children: [
                      Container(
                        height: 90.0,
                        width: 5.0,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15))),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: Container(
                          // color: Colors.orange,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "04 April",
                                style: TextStyle(
                                    color: Colors.blue, fontSize: 11.0),
                              ),
                              Text(
                                "Lorem ipsum is a placeholder text commonly Slider",
                                style: TextStyle(
                                    color: Colors.red, fontSize: 11.0),
                              ),
                              Text(
                                "Lorem ipsum is a placeholder text commonly, is a Learn New placeholder text commonly",
                                style: TextStyle(fontSize: 11.0),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      )
                    ],
                  ),

                  // Row(children: [],)
                ),
                actions: <Widget>[
                  IconSlideAction(
                    caption: "Unread",
                    color: Colors.white,
                    foregroundColor: Colors.red,
                    icon: Icons.notifications_on_outlined,
                    onTap: () {},
                  ),
                  IconSlideAction(
                    caption: "Remove",
                    color: Colors.white,
                    foregroundColor: Colors.red,
                    icon: Icons.delete_outline,
                    onTap: () {},
                  )
                ],
                actionPane: SlidableBehindActionPane(),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                width: 380.0,
                height: 90.0,
                // color: Colors.red,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.grey[100]),
                child: Row(
                  children: [
                    Container(
                      height: 90.0,
                      width: 5.0,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              bottomLeft: Radius.circular(15))),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: Container(
                        // color: Colors.orange,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "04 April",
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 11.0),
                            ),
                            Text(
                              "Lorem ipsum is a placeholder text commonly",
                              style:
                                  TextStyle(color: Colors.red, fontSize: 11.0),
                            ),
                            Text(
                              "Lorem ipsum is a placeholder text commonly, is a Learn New placeholder text commonly",
                              style: TextStyle(fontSize: 11.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    )
                  ],
                ),

                // Row(children: [],)
              ),
              // displaying second Notification

              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                width: 380.0,
                height: 90.0,
                // color: Colors.red,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.grey[100]),
                child: Row(
                  children: [
                    Container(
                      height: 90.0,
                      width: 5.0,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              bottomLeft: Radius.circular(15))),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: Container(
                        // color: Colors.orange,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "04 April",
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 11.0),
                            ),
                            Text(
                              "Lorem ipsum is a placeholder text commonly",
                              style:
                                  TextStyle(color: Colors.red, fontSize: 11.0),
                            ),
                            Text(
                              "Lorem ipsum is a placeholder text commonly, is a Learn New placeholder text commonly",
                              style: TextStyle(fontSize: 11.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                // Row(children: [],)
              ),
              // displaying 3d notification
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                width: 380.0,
                height: 90.0,
                // color: Colors.red,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.grey[100]),
                child: Row(
                  children: [
                    // Container(
                    //   height: 90.0,
                    //   width: 5.0,
                    //   decoration: BoxDecoration(
                    //       color: Colors.red,
                    //       borderRadius: BorderRadius.only(
                    //           topLeft: Radius.circular(15),
                    //           bottomLeft: Radius.circular(15))),
                    // ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: Container(
                        // color: Colors.orange,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "04 April",
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 11.0),
                            ),
                            Text(
                              "Lorem ipsum is a placeholder text commonly",
                              style:
                                  TextStyle(color: Colors.red, fontSize: 11.0),
                            ),
                            Text(
                              "Lorem ipsum is a placeholder text commonly, is a Learn New placeholder text commonly",
                              style: TextStyle(fontSize: 11.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    )
                  ],
                ),
                // Row(children: [],)
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                width: 380.0,
                height: 90.0,
                // color: Colors.red,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.grey[100]),
                child: Row(
                  children: [
                    // Container(
                    //   height: 90.0,
                    //   width: 5.0,
                    //   decoration: BoxDecoration(
                    //       color: Colors.red,
                    //       borderRadius: BorderRadius.only(
                    //           topLeft: Radius.circular(15),
                    //           bottomLeft: Radius.circular(15))),
                    // ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: Container(
                        // color: Colors.orange,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "04 April",
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 11.0),
                            ),
                            Text(
                              "Lorem ipsum is a placeholder text commonly",
                              style:
                                  TextStyle(color: Colors.red, fontSize: 11.0),
                            ),
                            Text(
                              "Lorem ipsum is a placeholder text commonly, is a Learn New placeholder text commonly",
                              style: TextStyle(fontSize: 11.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    )
                  ],
                ),
                // Row(children: [],)
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                width: 380.0,
                height: 90.0,
                // color: Colors.red,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.grey[100]),
                child: Row(
                  children: [
                    // Container(
                    //   height: 90.0,
                    //   width: 5.0,
                    //   decoration: BoxDecoration(
                    //       color: Colors.red,
                    //       borderRadius: BorderRadius.only(
                    //           topLeft: Radius.circular(15),
                    //           bottomLeft: Radius.circular(15))),
                    // ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: Container(
                        // color: Colors.orange,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "04 April",
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 11.0),
                            ),
                            Text(
                              "Lorem ipsum is a placeholder text commonly",
                              style:
                                  TextStyle(color: Colors.red, fontSize: 11.0),
                            ),
                            Text(
                              "Lorem ipsum is a placeholder text commonly, is a Learn New placeholder text commonly",
                              style: TextStyle(fontSize: 11.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    )
                  ],
                ),
                // Row(children: [],)
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                width: 380.0,
                height: 90.0,
                // color: Colors.red,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.grey[100]),
                child: Row(
                  children: [
                    // Container(
                    //   height: 90.0,
                    //   width: 5.0,
                    //   decoration: BoxDecoration(
                    //       color: Colors.red,
                    //       borderRadius: BorderRadius.only(
                    //           topLeft: Radius.circular(15),
                    //           bottomLeft: Radius.circular(15))),
                    // ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: Container(
                        // color: Colors.orange,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "04 April",
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 11.0),
                            ),
                            Text(
                              "Lorem ipsum is a placeholder text commonly",
                              style:
                                  TextStyle(color: Colors.red, fontSize: 11.0),
                            ),
                            Text(
                              "Lorem ipsum is a placeholder text commonly, is a Learn New placeholder text commonly",
                              style: TextStyle(fontSize: 11.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    )
                  ],
                ),
                // Row(children: [],)
              )
            ],
          ),
        ),
      ),
    );
  }
}
