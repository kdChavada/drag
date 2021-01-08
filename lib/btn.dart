import 'package:drag/tab.dart';
import 'package:flutter/material.dart';
import 'Choose background color.dart';
import 'DragHandleExample.dart';
import 'addloges.dart';
import 'banzemodelsheet.dart';
import 'chatScreen.dart';
import 'color pic.dart';
import 'customcolor.dart';
import 'dayShedule.dart';
import 'demo.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'demo3drag.dart';

class Btn extends StatefulWidget {
  @override
  _BtnState createState() => _BtnState();
}

class _BtnState extends State<Btn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("All Type"),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
        children: [
          RaisedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Kanban()),
              );

            },
            child: Text("Demo"),
          ),
          SizedBox(height: 10.0,),
          RaisedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DragHandleExample()),
              );
            },
            child: Text("Demo1"),
          ),
          SizedBox(height: 10.0,),
          RaisedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DemoTab()),
              );
            },
            child: Text("tab"),
          ),


          SizedBox(height: 10.0,),
          RaisedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ListDrag()),
              );
            },
            child: Text("List Drag"),
          ),



          SizedBox(height: 10.0,),
          RaisedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChatScreen()),
              );
            },
            child: Text("Chat Screen"),
          ),


          SizedBox(height: 10.0,),
          RaisedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddLogs()),
              );
            },
            child: Text("Add Loges"),
          ),

          SizedBox(height: 10.0,),
          RaisedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ColorPic()),
              );
            },
            child: Text("Color Pic"),
          ),



          SizedBox(height: 10.0,),
          RaisedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChooseColor()),
              );
            },
            child: Text("Choose background color"),
          ),

          SizedBox(height: 10.0,),
          RaisedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SvgDemo()),
              );
            },
            child: Text("SVG DEMO"),
          ),
          SizedBox(height: 10.0,),
          RaisedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DaySec()),
              );
            },
            child: Text("Calender List"),
          ),




          SizedBox(height: 10.0,),
          RaisedButton(
            onPressed: (){
              showCupertinoModalBottomSheet(
                expand: false,
                context: context,
                backgroundColor: Colors.transparent,
                builder: (context) =>Badge(),
              );
            },
            child: Text("sheet Open Badge"),
          ),


          SizedBox(height: 10.0,),
          RaisedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DaySec()),
              );
            },
            child: Text("Demo "),
          ),

        ],
          ),
        ),
      ),
    );
  }
}
