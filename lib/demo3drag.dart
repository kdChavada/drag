import 'package:flutter/material.dart';

class ListDrag extends StatefulWidget {
  @override
  _ListDragState createState() => _ListDragState();
}

class _ListDragState extends State<ListDrag> {
  List<Widget> myCustomList = [
    Container(
      height: 100.0,
      width: 50.0,
      color: Colors.red,
    ),
    Container(
      height: 100.0,
      width: 50.0,
      color: Colors.blue,
    ),
    Container(
      height: 100.0,
      width: 50.0,
      color: Colors.green,
    ),
    Container(
      height: 100.0,
      width: 50.0,
      color: Colors.pinkAccent,
    ),
    Container(
      height: 100.0,
      width: 50.0,
      color: Colors.tealAccent,
    ),

    Container(
      height: 100.0,
      width: 50.0,
      color: Colors.red,
    ),
    Container(
      height: 100.0,
      width: 50.0,
      color: Colors.blue,
    ),
    Container(
      height: 100.0,
      width: 50.0,
      color: Colors.green,
    ),
    Container(
      height: 100.0,
      width: 100.0,
      color: Colors.pinkAccent,
    ),
    Container(
      height: 100.0,
      width: 50.0,
      color: Colors.tealAccent,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("drag List"),
      ),

      body: Center(
        child: ReorderableListView(
          children: List.generate(myCustomList.length, (index) {
            return ListTile(
              key: UniqueKey(),
              title: (myCustomList[index]),
            );
          }),
          onReorder: (int oldIndex, int newIndex) {
            setState(() {
              if (newIndex > oldIndex) {
                newIndex += 1;
              }
              final Widget mywight = myCustomList.removeAt(oldIndex);
              myCustomList.insert(newIndex, mywight);
            }
            );
          },
        ),
      ),
    );
  }
}
