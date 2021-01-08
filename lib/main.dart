import 'dart:collection';
import 'package:flutter/material.dart';

import 'btn.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Btn(),
    );
  }
}

class Item {
  final String id;
  String listId;
  final String title;

  Item({this.id, this.listId, this.title});
}

class Kanban extends StatefulWidget {
  final double tileHeight = 100;
  final double headerHeight = 80;
  final double tileWidth = 300;

  @override
  _KanbanState createState() => _KanbanState();
}

class _KanbanState extends State<Kanban> {
  LinkedHashMap<String, List<Item>> board;

  @override
  void initState() {
    board = LinkedHashMap();
    board.addAll({
      "1": [
        Item(id: "1", listId: "1", title: "Add Loges"),
        Item(id: "2", listId: "1", title: "HIIT (AM or PM)"),
        Item(id: "3", listId: "1", title: "Steps 10k"),
      ],
      "2": [
        Item(id: "4", listId: "2", title: "Core Abs (AM or PM)"),
        Item(id: "5", listId: "2", title: "HIIT (AM or PM)"),
        Item(id: "6", listId: "2", title: "Steps 10k"),
      ],
      "3": [
        Item(id: "7", listId: "3", title: "Core Abs (AM or PM)"),
        Item(id: "8", listId: "3", title: "HIIT (AM or PM)"),
        Item(id: "9", listId: "3", title: "Steps 10k"),
      ],
      "4": [
        Item(id: "10", listId: "4", title: "Core Abs (AM or PM)"),
        Item(id: "11", listId: "4", title: "HIIT (AM or PM)"),
        Item(id: "12", listId: "4", title: "Steps 10k"),
      ],
      "5": [
        Item(id: "13", listId: "5", title: "Core Abs (AM or PM)"),
        Item(id: "14", listId: "5", title: "HIIT (AM or PM)"),
        Item(id: "15", listId: "5", title: "Steps 10k"),
      ],
      "6": [
        Item(id: "16", listId: "6", title: "Core Abs (AM or PM)"),
        Item(id: "17", listId: "6", title: "HIIT (AM or PM)"),
        Item(id: "18", listId: "6", title: "Steps 10k"),
      ],
    });

    super.initState();
  }

  buildItemDragTarget(listId, targetPosition, double height) {
    return DragTarget<Item>(
      // Will accept others, but not himself
      onWillAccept: (Item data) {
        return board[listId].isEmpty ||
            data.id != board[listId][targetPosition].id;
      },
      // Moves the card into the position
      onAccept: (Item data) {
        setState(() {
          board[data.listId].remove(data);
          data.listId = listId;
          if (board[listId].length > targetPosition) {
            board[listId].insert(targetPosition + 1, data);
          } else {
            board[listId].add(data);
          }
        });
      },
      builder:
          (BuildContext context, List<Item> data, List<dynamic> rejectedData) {
        if (data.isEmpty) {
          // The area that accepts the draggable
          return Container(
            height: height,
          );
        } else {
          return Column(
            // What's shown when hovering on it
            children: [
              Container(
                height: height,
              ),
              ...data.map((Item item) {
                return Opacity(
                  opacity: 0.5,
                  child: ItemWidget(item: item),
                );
              }).toList()
            ],
          );
        }
      },
    );
  }

  buildHeader(String listId) {
    Widget header = Container(
      height: widget.headerHeight,
      child: HeaderWidget(title: listId),
    );

    return Stack(
      // The header
      children: [
        Draggable<String>(
          data: listId,
          child: header, // A header waiting to be dragged
          childWhenDragging: Opacity(
            // The header that's left behind
            opacity: 0.2,
            child: header,
          ),
          feedback: FloatingWidget(
            child: Container(
              // A header floating around
              width: widget.tileWidth,
              child: header,
            ),
          ),
        ),
        buildItemDragTarget(listId, 0, widget.headerHeight),
        DragTarget<String>(
          // Will accept others, but not himself
          onWillAccept: (String incomingListId) {
            return listId != incomingListId;
          },
          // Moves the card into the position
          onAccept: (String incomingListId) {
            setState(
              () {
                LinkedHashMap<String, List<Item>> reorderedBoard =
                    LinkedHashMap();
                for (String key in board.keys) {
                  if (key == incomingListId) {
                    reorderedBoard[listId] = board[listId];
                  } else if (key == listId) {
                    reorderedBoard[incomingListId] = board[incomingListId];
                  } else {
                    reorderedBoard[key] = board[key];
                  }
                }
                board = reorderedBoard;
              },
            );
          },

          builder: (BuildContext context, List<String> data,
              List<dynamic> rejectedData) {
            if (data.isEmpty) {
              // The area that accepts the draggable
              return Container(
                height: widget.headerHeight,
                width: widget.tileWidth,
              );
            } else {
              return Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 3,
                    color: Colors.blueAccent,
                  ),
                ),
                height: widget.headerHeight,
                width: widget.tileWidth,
              );
            }
          },
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    buildKanbanList(String listId, List<Item> items) {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            buildHeader(listId),
            ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                // A stack that provides:
                // * A draggable object
                // * An area for incoming draggables
                return Stack(
                  children: [
                    Draggable<Item>(
                      data: items[index],
                      child: ItemWidget(
                        item: items[index],
                      ), // A card waiting to be dragged
                      childWhenDragging: Opacity(
                        // The card that's left behind
                        opacity: 0.2,
                        child: ItemWidget(item: items[index]),
                      ),
                      feedback: Container(
                        // A card floating around
                        height: widget.tileHeight,
                        width: widget.tileWidth,
                        child: FloatingWidget(
                            child: ItemWidget(
                          item: items[index],
                        )),
                      ),
                    ),
                    buildItemDragTarget(listId, index, widget.tileHeight),
                  ],
                );
              },
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(title: Text("Schedule")),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: board.keys.map((String key) {
              return Container(
                width: widget.tileWidth,
                child: buildKanbanList(key, board[key]),
              );
            }).toList()),
      ),
    );
  }
}

// The list header (static)
class HeaderWidget extends StatelessWidget {
  final String title;

  const HeaderWidget({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.teal,
      child: ListTile(
        dense: true,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 10.0,
        ),
        title: Text(
          title,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        trailing: Icon(
          Icons.add,
          color: Colors.white,
          size: 30.0,
        ),
        onTap: () {},
      ),
    );
  }
}

// The card (static)
class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key key, this.item}) : super(key: key);
  ListTile makeListTile(Item item) => ListTile(
        contentPadding: EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 10.0,
        ),
        title: Text(
          item.title,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        subtitle: Text("listId: ${item.listId}"),
        trailing: Icon(
          Icons.sort,
          color: Colors.white,
          size: 30.0,
        ),
        onTap: () {},
      );

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.greenAccent,
        ),
        child: makeListTile(item),
      ),
    );
  }
}

class FloatingWidget extends StatelessWidget {
  final Widget child;

  const FloatingWidget({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 0.1,
      child: child,
    );
  }
}
