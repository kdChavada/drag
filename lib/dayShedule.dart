import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DaySec extends StatefulWidget {
  @override
  _DaySecState createState() => _DaySecState();
}

class _DaySecState extends State<DaySec> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("list Demo"),
      ),
      body: Column(
        children: [
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Text("WED",
                            style: TextStyle(
                            fontFamily: 'Montserrat',
                              color: Colors.blue,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal,
                            ),
                            ),
                            Container(
                              child: Text("14",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Colors.blue,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        child: Column(
                          children: [
                            Container(
                              height: h*0.070,
                              width: w*0.9,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9),
                                color: Colors.indigo  ,
                              ),

                            ),
                            Container(
                              height: h*0.070,
                              width: w*0.9,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9),
                                color: Colors.indigo  ,
                              ),

                            ),
                            Container(
                              height: h*0.070,
                              width: w*0.9,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9),
                                color: Colors.indigo  ,
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
          ))
        ],
      ),
    );
  }
}
