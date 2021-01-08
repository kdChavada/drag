import 'package:flutter/material.dart';
import 'package:flutter_hsvcolor_picker/flutter_hsvcolor_picker.dart';

class ColorSheet extends StatefulWidget {
  @override
  _ColorSheetState createState() => _ColorSheetState();
}

class _ColorSheetState extends State<ColorSheet> {
  @override
  Widget build(BuildContext context) {
    double h  = MediaQuery.of(context).size.height;
    double w  = MediaQuery.of(context).size.width;
    Color _customColor = Colors.redAccent;
   return Scaffold(
     backgroundColor: Colors.white,
     body: Container(
       child: Column(
         children: [
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
     ),
   );
  }
}

