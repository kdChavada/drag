import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChooseColor extends StatefulWidget {
  @override
  _ChooseColorState createState() => _ChooseColorState();
}

class _ChooseColorState extends State<ChooseColor> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Choose Color"),
        leading: Center(child: Text("Cancel")),
        actions: [
          Center(child: Text("Next")),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  height: h*0.3,
                  width: w*0.5,
                  child: Image(image: AssetImage('assets/images/Food_for_strength_03.png'),),
                ),
                Center(
                  child: Text("Highly Improving",
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Color(0xff000000),
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        letterSpacing: -0.442,
                      )
               ),
                ),
                Center(
                  child: Text("You earned this badge by doing 3 workouts \n in a two week on Oct 17,2020.",
                style: TextStyle(
                fontFamily: 'Montserrat',
                color: Color(0xff63696e),
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal,
                letterSpacing: 0.1000000014901161,
                ),
                ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
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
                Container(
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
    );
  }
}
