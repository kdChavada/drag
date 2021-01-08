import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'Color Picker.dart';


class Badge extends StatefulWidget {
  @override
  _BadgeState createState() => _BadgeState();
}

class _BadgeState extends State<Badge> {
  Color _customColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              height: h * 0.07,
              decoration: BoxDecoration(
                color: Color(0xf0f9f9f9),
                border: Border.fromBorderSide(
                  BorderSide(
                    color: Colors.grey[400],
                    width: 0.5,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Cancel",
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Text(
                    "Badge",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Color(0xff000000),
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                      letterSpacing: -0.408,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Next",
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(

                  children: [
                    Container(
                      decoration: new BoxDecoration(color: _customColor),
                      child: Image(
                        image: AssetImage('assets/images/badge_four.png'),
                        fit: BoxFit.fill,
                        height: h * 0.3,
                      ),
                    ),
                    Container(
                      child: Text(
                        "Highly Improving",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Color(0xff000000),
                          fontSize: 26,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                          letterSpacing: -0.442,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                          "You earned this badge by doing 3 workouts \n in a two week on Oct 17,2020.",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Color(0xff63696e),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal,
                            letterSpacing: 0.1000000014901161,
                          )),
                    ),
                    SizedBox(
                      height: 13.0,
                    ),
                    Divider(
                      color: Color(0xffdddddd),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 19.0),
                      alignment: Alignment.centerLeft,
                      child: Text("Choose background color",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Color(0xff393e42),
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: (){
                              showCupertinoModalBottomSheet(
                                expand: false,
                                context: context,
                                backgroundColor: Colors.transparent,
                                builder: (context) => ColorSheet(),
                              );
                            },
                            child: Container(
                              width: 51,
                              height: 52,
                              decoration: new BoxDecoration(
                                  border: Border.all(
                                      color: Color(0xffdddddd),
                                      width: 2
                                  ),
                                  borderRadius: BorderRadius.circular(7)
                              ),
                              child: Center(
                                child: Icon(CupertinoIcons.eyedropper),
                              ),
                            ),
                          ),


                          Container(
                              width: 51,
                              height: 52,
                              decoration: new BoxDecoration(
                                  border: Border.all(
                                      color: Color(0xff0089f1),
                                      width: 2
                                  ),
                                  borderRadius: BorderRadius.circular(7)
                              )
                          ),
                          Container(
                            width: 51,
                            height: 52,
                            decoration: new BoxDecoration(
                              color: Color(0xff000000),
                              borderRadius: BorderRadius.circular(7),),),
                          Container(
                              width: 51,
                              height: 52,
                              decoration: new BoxDecoration(
                                  color: Color(0xfffa6400),
                                  borderRadius: BorderRadius.circular(7)
                              )
                          ),
                          Container(
                              width: 51,
                              height: 52,
                              decoration: new BoxDecoration(
                                  color: Color(0xff6dd400),
                                  borderRadius: BorderRadius.circular(7)
                              )
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 51,
                            height: 52,
                            decoration: new BoxDecoration(
                                color: Color(0xff44d7b6),
                                borderRadius: BorderRadius.circular(7)
                            ),

                          ),
                          Container(
                            width: 51,
                            height: 52,
                            decoration: new BoxDecoration(
                                color: Color(0xff0091ff),
                                borderRadius: BorderRadius.circular(7)
                            ),

                          ),
                          Container(
                            width: 51,
                            height: 52,
                            decoration: new BoxDecoration(
                              color: Color(0xff6236ff),
                              borderRadius: BorderRadius.circular(7),),),
                          Container(
                              width: 51,
                              height: 52,
                              decoration: new BoxDecoration(
                                  color: Color(0xff6d7278),
                                  borderRadius: BorderRadius.circular(7)
                              )
                          ),
                          Container(
                              width: 51,
                              height: 52,
                              decoration: new BoxDecoration(
                                  color: Color(0xfff7b500),
                                  borderRadius: BorderRadius.circular(7)
                              )
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

