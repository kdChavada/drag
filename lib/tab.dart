import 'package:flutter/material.dart';

class DemoTab extends StatefulWidget {
  @override
  _DemoTabState createState() => _DemoTabState();
}

class _DemoTabState extends State<DemoTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Tab Demo"),
      ),
      body: Container(
        child: DefaultTabController(
          length: 2,
          initialIndex: 0,
          child: TabBar(
            tabs: [
              Tab(
                child: Text(
                  "Program",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Color(0xff0089f1),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                    letterSpacing: 0.308,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Challenges",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Color(0xff76767c),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                    letterSpacing: 0.308,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
