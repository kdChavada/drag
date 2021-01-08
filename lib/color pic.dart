import 'package:flutter/material.dart';
import 'package:flutter_hsvcolor_picker/flutter_hsvcolor_picker.dart';

class ColorPic extends StatefulWidget {
  @override
  _ColorPicState createState() => _ColorPicState();
}

class _ColorPicState extends State<ColorPic> {
  Color _customColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w= MediaQuery.of(context).size.width;
   return Scaffold(
     appBar: AppBar(
       title: Text("Color Picker"),
     ),

     body: Column(
       children: [
         Container(
           padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0),
           width: w,
           height:h*0.1 ,
           child: Center(
             child: Text('My color is: '),
           ),
           decoration: new BoxDecoration(color: _customColor),
         ),
         new ColorPicker(
           color: Colors.red,
           onChanged: (value) {
             setState(() {
               _customColor = value;
             });
           },
         ),
       ],
     ),
    );
  }
}
