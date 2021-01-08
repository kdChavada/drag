import 'package:chat_bubbles/bubbles/bubble_normal.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15.0),
            color: Color(0xd1f8f8f8),
            height: h * 0.14,
            width: w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    color: Colors.transparent,
                    padding: EdgeInsets.only(left: 10.0),
                    child: Icon(
                      Icons.arrow_back_ios_rounded,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      CircleAvatar(
                      backgroundImage: AssetImage('assets/images/Food_for_strength_03.png'),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "natashawest84",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Color(0xff101418),
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 15.0),
                  child: Icon(
                    Icons.info,
                    color: Colors.blueAccent,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  BubbleNormal(
                    text: 'Hi',
                    isSender: false,
                    color: Color(0xffe8eef2),
                    tail: true,
                  ),
                  BubbleNormal(
                    text: 'Hii',
                    isSender: true,
                    color: Color(0xff0089f1),
                    tail: true,
                    sent: true,
                  ),
                  BubbleNormal(
                    text: 'How Are You ?',
                    isSender: false,
                    color: Color(0xffe8eef2),
                    tail: true,
                  ),
                  BubbleNormal(
                    text: 'I Am File ',
                    isSender: true,
                    color: Color(0xff0089f1),
                    tail: true,
                    sent: true,
                  ),
                  BubbleNormal(
                    text: 'And You ?',
                    isSender: false,
                    color: Color(0xffe8eef2),
                    tail: true,
                  ),
                  BubbleNormal(
                    text: ' I Am File',
                    isSender: true,
                    color: Color(0xff0089f1),
                    tail: true,
                    sent: true,
                  ),
                  BubbleNormal(
                    text: 'Where Are You',
                    isSender: false,
                    color: Color(0xffe8eef2),
                    tail: true,
                  ),
                  BubbleNormal(
                    text: 'At Office',
                    isSender: true,
                    color: Color(0xff0089f1),
                    tail: true,
                    sent: true,
                  ),
                  BubbleNormal(
                    text: 'ok',
                    isSender: false,
                    color: Color(0xffe8eef2),
                    tail: true,
                  ),
                  BubbleNormal(
                    text: 'afternoon  Are You Free',
                    isSender: true,
                    color: Color(0xff0089f1),
                    tail: true,
                    sent: true,
                  ),
                  BubbleNormal(
                    text: 'yes',
                    isSender: false,
                    color: Color(0xffe8eef2),
                    tail: true,
                  ),
                  BubbleNormal(
                    text: 'where Are You From',
                    isSender: true,
                    color: Color(0xff0089f1),
                    tail: true,
                    sent: true,
                  ),
                  BubbleNormal(
                    text: 'At TCS Company ',
                    isSender: false,
                    color: Color(0xffe8eef2),
                    tail: true,
                  ),
                  BubbleNormal(
                    text: 'ya',
                    isSender: true,
                    color: Color(0xff0089f1),
                    tail: true,
                    sent: true,
                  ),
                  BubbleNormal(
                    text: 'ok',
                    isSender: false,
                    color: Color(0xffe8eef2),
                    tail: true,
                  ),
                  BubbleNormal(
                    text: 'byy',
                    isSender: true,
                    color: Color(0xff0089f1),
                    delivered: true,
                    tail: true,
                    sent: true,
                  ),
                  BubbleNormal(
                    text: 'byy',
                    isSender: false,
                    color: Color(0xffe8eef2),
                    tail: true,
                    bubbleRadius: 50.0,
                  ),
                ],
              ),
            ),
          ),
          Divider(
            color: Color(0xffdddddd),
            thickness: 2.0,
          ),
          Container(
            child: Row(
              children: [
                Container(
                  height: h * 0.06,
                  width: w,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Type a message",
                      suffix: Container(
                        padding: EdgeInsets.only(right: 10.0),
                        width: w * 0.2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: (){

                              },
                              child: Container(
                                color: Colors.transparent,
                                child: Icon(
                                  Icons.camera_alt_outlined,
                                  color: Colors.blueAccent,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            GestureDetector(
                              onTap: (){},
                              child: Container(
                                color: Colors.transparent,
                                child: Icon(
                                  Icons.mic,
                                  color: Colors.blueAccent,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
