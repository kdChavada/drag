

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';
class AddLogs extends StatefulWidget {
  @override
  _AddLogsState createState() => _AddLogsState();
}

class _AddLogsState extends State<AddLogs> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Add Logs",
          style: TextStyle(
            fontFamily: 'Montserrat',
            color: Color(0xff000000),
            fontSize: 17,
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.normal,
            letterSpacing: -0.408,
          ),
        ),
        leading: Row(
          children: [
            Container(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                "Cancel",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
        actions: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(right: 10.0),
                child: Text(
                  "Submit",
                  style: TextStyle(color: Color(0xff007aff)),
                ),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Core",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Color(0xff101418),
                      fontSize: 23,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                      letterSpacing: 0,
                    ),
                  ),
                  Text(
                    "Wed 14th Oct 2020",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Color(0xff63696e),
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                      letterSpacing: 0,
                    ),
                  )
                ],
              ),
            ),

            //First Part
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "A1",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Color(0xff89939a),
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        Text(
                          "Med Ball V Ups",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Color(0xff101418),
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: h * 0.07,
                    width: w * 0.3,
                    decoration: new BoxDecoration(
                        color: Color(0x190089f1),
                        borderRadius: BorderRadius.circular(6)),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Image(
                            image: AssetImage('assets/images/weight.png'),
                            height: 18.0,
                            width: 14.0,
                          ),
                        ),
                        SizedBox(width: 10.0,),
                        Container(
                          child: Text(
                            "1380 Lbs",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Color(0xff0089f1),
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Text(
                                "SET",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Color(0xff89939a),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "1",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Color(0xff101418),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "2",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Color(0xff101418),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "3",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Color(0xff101418),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Text(
                                "REPS",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Color(0xff89939a),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "20",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Color(0xff101418),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "20",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Color(0xff101418),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "20",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Color(0xff101418),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Text(
                                "TEMPO",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Color(0xff89939a),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "2011",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Color(0xff101418),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "2011",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Color(0xff101418),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "2011",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Color(0xff101418),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Text(
                                "LBS",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Color(0xff89939a),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Container(
                                height: h * 0.03,
                                width: w * 0.2,
                                decoration: new BoxDecoration(
                                  color: Color(0xffdddddd),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Center(child: Text("22")),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Container(
                                height: h * 0.03,
                                width: w * 0.2,
                                decoration: new BoxDecoration(
                                  color: Color(0xffdddddd),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Center(child: Text("22")),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Container(
                                height: h * 0.03,
                                width: w * 0.2,
                                decoration: new BoxDecoration(
                                  color: Color(0xffdddddd),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Center(child: Text("22")),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Text(
                                "NOTES",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Color(0xff89939a),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              GestureDetector(
                                  onTap: () {
                                    if(Platform.isAndroid)
                                    {
                                      AlertDialog alert = AlertDialog(
                                        title: Text("Add Note"),
                                        content: Column(
                                          children: [
                                            Text(
                                                "Include any extra information about Med Ball V Ups excercise."),
                                            Container(
                                              child: TextField(
                                                decoration: InputDecoration(
                                                    border: InputBorder.none,
                                                    hintText: "Add Note"
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        actions: [
                                          FlatButton(
                                            child: Text("Cancel"),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                          ),
                                          FlatButton(
                                            child: Text("Add"),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                          ),
                                        ],
                                      );
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return alert;
                                        },
                                      );
                                    }
                                    else if(Platform.isIOS)
                                    {
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return CupertinoAlertDialog(
                                              title: Text("Add Note"),
                                              content: Column(
                                                children: [
                                                  Text(
                                                      "Include any extra information about Med Ball V Ups excercise."),
                                                  Material(
                                                    child: TextField(
                                                      decoration: InputDecoration(),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              actions: [
                                                CupertinoDialogAction(
                                                  child: Text('CanCal'),
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                ),
                                                CupertinoDialogAction(
                                                  child: Text('Add'),
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                ),
                                              ],
                                            );
                                          });
                                    }
                                  },
                                  child: Icon(
                                    CupertinoIcons.bubble_left,
                                    color: Colors.blue,
                                  )),
                              SizedBox(
                                height: 10.0,
                              ),
                              GestureDetector(
                                onTap: () {

                                  if(Platform.isAndroid)
                                    {
                                      AlertDialog alert = AlertDialog(
                                        title: Text("Add Note"),
                                        content: Column(
                                          children: [
                                            Text(
                                                "Include any extra information about Med Ball V Ups excercise."),
                                            Container(
                                              child: TextField(
                                                decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  hintText: "Add Note"
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        actions: [
                                          FlatButton(
                                            child: Text("Cancel"),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                          ),
                                          FlatButton(
                                            child: Text("Add"),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                          ),
                                        ],
                                      );
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return alert;
                                        },
                                      );
                                    }
                                  else if(Platform.isIOS)
                                    {
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return CupertinoAlertDialog(
                                              title: Text("Add Note"),
                                              content: Column(
                                                children: [
                                                  Text(
                                                      "Include any extra information about Med Ball V Ups excercise."),
                                                  Material(
                                                    child: TextField(
                                                      decoration: InputDecoration(),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              actions: [
                                                CupertinoDialogAction(
                                                  child: Text('CanCal'),
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                ),
                                                CupertinoDialogAction(
                                                  child: Text('Add'),
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                ),
                                              ],
                                            );
                                          });
                                    }


                                },
                                child: Container(
                                  color: Colors.transparent,
                                  child: Icon(
                                    CupertinoIcons.bubble_left,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              GestureDetector(
                                onTap: () {

                                  if(Platform.isAndroid)
                                  {
                                    AlertDialog alert = AlertDialog(
                                      title: Text("Add Note"),
                                      content: Column(
                                        children: [
                                          Text(
                                              "Include any extra information about Med Ball V Ups excercise."),
                                          Container(
                                            child: TextField(
                                              decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  hintText: "Add Note"
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      actions: [
                                        FlatButton(
                                          child: Text("Cancel"),
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                        ),
                                        FlatButton(
                                          child: Text("Add"),
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                        ),
                                      ],
                                    );
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return alert;
                                      },
                                    );
                                  }
                                  else if(Platform.isIOS)
                                  {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return CupertinoAlertDialog(
                                            title: Text("Add Note"),
                                            content: Column(
                                              children: [
                                                Text(
                                                    "Include any extra information about Med Ball V Ups excercise."),
                                                Material(
                                                  child: TextField(
                                                    decoration: InputDecoration(),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            actions: [
                                              CupertinoDialogAction(
                                                child: Text('CanCal'),
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                              ),
                                              CupertinoDialogAction(
                                                child: Text('Add'),
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                              ),
                                            ],
                                          );
                                        });
                                  }
                                },
                                child: Icon(
                                  CupertinoIcons.bubble_left,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //Second part
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "A2",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Color(0xff89939a),
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        Text(
                          "Weighted Russian Twist",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Color(0xff101418),
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: h * 0.07,
                    width: w * 0.3,
                    decoration: new BoxDecoration(
                        color: Color(0x190089f1),
                        borderRadius: BorderRadius.circular(6)),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Image(
                            image: AssetImage('assets/images/weight.png'),
                            height: 18.0,
                            width: 14.0,
                          ),
                        ),
                        SizedBox(width: 10.0,),
                        Container(
                          child: Text(
                            "6 Lbs",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Color(0xff0089f1),
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Text(
                                "SET",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Color(0xff89939a),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "1",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Color(0xff101418),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "2",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Color(0xff101418),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "3",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Color(0xff101418),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Text(
                                "REPS",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Color(0xff89939a),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "15/side",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Color(0xff101418),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "15/side",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Color(0xff101418),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "15/side",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Color(0xff101418),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Text(
                                "TEMPO",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Color(0xff89939a),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "1010",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Color(0xff101418),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "1010",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Color(0xff101418),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "1010",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Color(0xff101418),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Text(
                                "LBS",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Color(0xff89939a),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Container(
                                height: h * 0.03,
                                width: w * 0.2,
                                decoration: new BoxDecoration(
                                  color: Color(0xffdddddd),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Center(child: Text("2")),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Container(
                                height: h * 0.03,
                                width: w * 0.2,
                                decoration: new BoxDecoration(
                                  color: Color(0xffdddddd),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Center(child: Text("2")),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Container(
                                height: h * 0.03,
                                width: w * 0.2,
                                decoration: new BoxDecoration(
                                  color: Color(0xffdddddd),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Center(child: Text("2")),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Text(
                                "NOTES",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Color(0xff89939a),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  if(Platform.isAndroid)
                                  {
                                    AlertDialog alert = AlertDialog(
                                      title: Text("Add Note"),
                                      content: Column(
                                        children: [
                                          Text(
                                              "Include any extra information about Med Ball V Ups excercise."),
                                          Container(
                                            child: TextField(
                                              decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  hintText: "Add Note"
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      actions: [
                                        FlatButton(
                                          child: Text("Cancel"),
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                        ),
                                        FlatButton(
                                          child: Text("Add"),
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                        ),
                                      ],
                                    );
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return alert;
                                      },
                                    );
                                  }
                                  else if(Platform.isIOS)
                                  {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return CupertinoAlertDialog(
                                            title: Text("Add Note"),
                                            content: Column(
                                              children: [
                                                Text(
                                                    "Include any extra information about Med Ball V Ups excercise."),
                                                Material(
                                                  child: TextField(
                                                    decoration: InputDecoration(),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            actions: [
                                              CupertinoDialogAction(
                                                child: Text('CanCal'),
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                              ),
                                              CupertinoDialogAction(
                                                child: Text('Add'),
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                              ),
                                            ],
                                          );
                                        });
                                  }
                                },
                                child: Icon(
                                  CupertinoIcons.bubble_left,
                                  color: Colors.blue,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              GestureDetector(
                                onTap: () {
                                  if(Platform.isAndroid)
                                  {
                                    AlertDialog alert = AlertDialog(
                                      title: Text("Add Note"),
                                      content: Column(
                                        children: [
                                          Text(
                                              "Include any extra information about Med Ball V Ups excercise."),
                                          Container(
                                            child: TextField(
                                              decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  hintText: "Add Note"
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      actions: [
                                        FlatButton(
                                          child: Text("Cancel"),
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                        ),
                                        FlatButton(
                                          child: Text("Add"),
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                        ),
                                      ],
                                    );
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return alert;
                                      },
                                    );
                                  }
                                  else if(Platform.isIOS)
                                  {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return CupertinoAlertDialog(
                                            title: Text("Add Note"),
                                            content: Column(
                                              children: [
                                                Text(
                                                    "Include any extra information about Med Ball V Ups excercise."),
                                                Material(
                                                  child: TextField(
                                                    decoration: InputDecoration(),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            actions: [
                                              CupertinoDialogAction(
                                                child: Text('CanCal'),
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                              ),
                                              CupertinoDialogAction(
                                                child: Text('Add'),
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                              ),
                                            ],
                                          );
                                        });
                                  }
                                },
                                child: Icon(
                                  CupertinoIcons.bubble_left,
                                  color: Colors.blue,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              GestureDetector(
                                onTap: () {

                                  if(Platform.isAndroid)
                                  {
                                    AlertDialog alert = AlertDialog(
                                      title: Text("Add Note"),
                                      content: Column(
                                        children: [
                                          Text(
                                              "Include any extra information about Med Ball V Ups excercise."),
                                          Container(
                                            child: TextField(
                                              decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  hintText: "Add Note"
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      actions: [
                                        FlatButton(
                                          child: Text("Cancel"),
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                        ),
                                        FlatButton(
                                          child: Text("Add"),
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                        ),
                                      ],
                                    );
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return alert;
                                      },
                                    );
                                  }
                                  else if(Platform.isIOS)
                                  {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return CupertinoAlertDialog(
                                            title: Text("Add Note"),
                                            content: Column(
                                              children: [
                                                Text(
                                                    "Include any extra information about Med Ball V Ups excercise."),
                                                Material(
                                                  child: TextField(
                                                    decoration: InputDecoration(),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            actions: [
                                              CupertinoDialogAction(
                                                child: Text('CanCal'),
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                              ),
                                              CupertinoDialogAction(
                                                child: Text('Add'),
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                              ),
                                            ],
                                          );
                                        });
                                  }
                                },
                                child: Icon(
                                  CupertinoIcons.bubble_left,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //Third  Part

            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "A3",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Color(0xff89939a),
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        Text(
                          "Plank",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Color(0xff101418),
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: h * 0.07,
                    width: w * 0.3,
                    decoration: new BoxDecoration(
                        color: Color(0x190089f1),
                        borderRadius: BorderRadius.circular(6)),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Image(
                            image: AssetImage('assets/images/weight.png'),
                            height: 18.0,
                            width: 14.0,
                          ),
                        ),
                        SizedBox(width: 10.0,),
                        Container(
                          child: Text(
                            "18 Lbs",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Color(0xff0089f1),
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Text(
                                "SET",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Color(0xff89939a),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "1",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Color(0xff101418),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "2",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Color(0xff101418),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "3",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Color(0xff101418),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Text(
                                "REPS",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Color(0xff89939a),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "FF",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Color(0xff101418),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "FF",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Color(0xff101418),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "FF",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Color(0xff101418),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Text(
                                "TEMPO",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Color(0xff89939a),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "-",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Color(0xff101418),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "-",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Color(0xff101418),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "-",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Color(0xff101418),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Text(
                                "LBS",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Color(0xff89939a),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Container(
                                height: h * 0.03,
                                width: w * 0.2,
                                decoration: new BoxDecoration(
                                  color: Color(0xffdddddd),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Center(child: Text("6")),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Container(
                                height: h * 0.03,
                                width: w * 0.2,
                                decoration: new BoxDecoration(
                                  color: Color(0xffdddddd),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Center(child: Text("6")),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Container(
                                height: h * 0.03,
                                width: w * 0.2,
                                decoration: new BoxDecoration(
                                  color: Color(0xffdddddd),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Center(child: Text("6")),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Text(
                                "NOTES",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Color(0xff89939a),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  if(Platform.isAndroid)
                                  {
                                    AlertDialog alert = AlertDialog(
                                      title: Text("Add Note"),
                                      content: Column(
                                        children: [
                                          Text(
                                              "Include any extra information about Med Ball V Ups excercise."),
                                          Container(
                                            child: TextField(
                                              decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  hintText: "Add Note"
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      actions: [
                                        FlatButton(
                                          child: Text("Cancel"),
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                        ),
                                        FlatButton(
                                          child: Text("Add"),
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                        ),
                                      ],
                                    );
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return alert;
                                      },
                                    );
                                  }
                                  else if(Platform.isIOS)
                                  {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return CupertinoAlertDialog(
                                            title: Text("Add Note"),
                                            content: Column(
                                              children: [
                                                Text(
                                                    "Include any extra information about Med Ball V Ups excercise."),
                                                Material(
                                                  child: TextField(
                                                    decoration: InputDecoration(),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            actions: [
                                              CupertinoDialogAction(
                                                child: Text('CanCal'),
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                              ),
                                              CupertinoDialogAction(
                                                child: Text('Add'),
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                              ),
                                            ],
                                          );
                                        });
                                  }
                                },
                                child: Icon(
                                  CupertinoIcons.bubble_left,
                                  color: Colors.blue,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              GestureDetector(
                                onTap: () {
                                  if(Platform.isAndroid)
                                  {
                                    AlertDialog alert = AlertDialog(
                                      title: Text("Add Note"),
                                      content: Column(
                                        children: [
                                          Text(
                                              "Include any extra information about Med Ball V Ups excercise."),
                                          Container(
                                            child: TextField(
                                              decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  hintText: "Add Note"
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      actions: [
                                        FlatButton(
                                          child: Text("Cancel"),
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                        ),
                                        FlatButton(
                                          child: Text("Add"),
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                        ),
                                      ],
                                    );
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return alert;
                                      },
                                    );
                                  }
                                  else if(Platform.isIOS)
                                  {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return CupertinoAlertDialog(
                                            title: Text("Add Note"),
                                            content: Column(
                                              children: [
                                                Text(
                                                    "Include any extra information about Med Ball V Ups excercise."),
                                                Material(
                                                  child: TextField(
                                                    decoration: InputDecoration(),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            actions: [
                                              CupertinoDialogAction(
                                                child: Text('CanCal'),
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                              ),
                                              CupertinoDialogAction(
                                                child: Text('Add'),
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                              ),
                                            ],
                                          );
                                        });
                                  }
                                },
                                child: Icon(
                                  CupertinoIcons.bubble_left,
                                  color: Colors.blue,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              GestureDetector(
                                onTap: () {
                                  if(Platform.isAndroid)
                                  {
                                    AlertDialog alert = AlertDialog(
                                      title: Text("Add Note"),
                                      content: Column(
                                        children: [
                                          Text(
                                              "Include any extra information about Med Ball V Ups excercise."),
                                          Container(
                                            child: TextField(
                                              decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  hintText: "Add Note"
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      actions: [
                                        FlatButton(
                                          child: Text("Cancel"),
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                        ),
                                        FlatButton(
                                          child: Text("Add"),
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                        ),
                                      ],
                                    );
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return alert;
                                      },
                                    );
                                  }
                                  else if(Platform.isIOS)
                                  {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return CupertinoAlertDialog(
                                            title: Text("Add Note"),
                                            content: Column(
                                              children: [
                                                Text(
                                                    "Include any extra information about Med Ball V Ups excercise."),
                                                Material(
                                                  child: TextField(
                                                    decoration: InputDecoration(),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            actions: [
                                              CupertinoDialogAction(
                                                child: Text('CanCal'),
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                              ),
                                              CupertinoDialogAction(
                                                child: Text('Add'),
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                              ),
                                            ],
                                          );
                                        });
                                  }
                                },
                                child: Icon(
                                  CupertinoIcons.bubble_left,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
