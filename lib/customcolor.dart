import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SvgDemo extends StatefulWidget {
  @override
  _SvgDemoState createState() => _SvgDemoState();
}

class _SvgDemoState extends State<SvgDemo> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Demo Of Svg"),
      ),
      body: Row(
        children: [
          Container(
            color: Colors.blue,
            width: w*0.2,
            height: h*0.1,
          ),
          Container(
            color: Colors.red,
            width: 103,
            height: 102,
          ),
          Container(
            color: Colors.green,
            width: 103,
            height: 102,
          ),
          Container(
            color: Colors.pink,
            width: 103,
            height: 102,
          ),
        ],
      ),
    );
  }
}
