//Part two of widgets

//ListView

import 'package:expanded_wotw/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyListView extends StatelessWidget {
  var i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Text(
            'This is my text',
            style: TextStyle(fontSize: 36),
          ),
          Text(
            'This is my text',
            style: TextStyle(fontSize: 36),
          ),
          Text(
            'This is my text',
            style: TextStyle(fontSize: 36),
          ),
          Text(
            'This is my text',
            style: TextStyle(fontSize: 36),
          ),
          Text(
            'This is my text',
            style: TextStyle(fontSize: 36),
          ),
          Text(
            'This is my text',
            style: TextStyle(fontSize: 36),
          ),
          Text(
            'This is my text',
            style: TextStyle(fontSize: 36),
          ),
          Text(
            'This is my text',
            style: TextStyle(fontSize: 36),
          ),
          Text(
            'This is my text',
            style: TextStyle(fontSize: 36),
          ),
          Text(
            'This is my text',
            style: TextStyle(fontSize: 36),
          ),
          Text(
            'This is my text',
            style: TextStyle(fontSize: 36),
          ),
          Text(
            'This is my text',
            style: TextStyle(fontSize: 36),
          ),
          Text(
            'This is my text',
            style: TextStyle(fontSize: 36),
          ),
          Text(
            'This is my text',
            style: TextStyle(fontSize: 36),
          ),
          Text(
            'This is my text',
            style: TextStyle(fontSize: 36),
          ),
          Text(
            'This is my text',
            style: TextStyle(fontSize: 36),
          ),
          Text(
            'This is my text',
            style: TextStyle(fontSize: 36),
          ),
          Text(
            'This is my text',
            style: TextStyle(fontSize: 36),
          ),
          Text(
            'This is my text',
            style: TextStyle(fontSize: 36),
          ),
          Text(
            'This is my text',
            style: TextStyle(fontSize: 36),
          ),
          Text(
            'This is my text',
            style: TextStyle(fontSize: 36),
          ),
          Text(
            'This is my text',
            style: TextStyle(fontSize: 36),
          ),
          Text(
            'This is my text',
            style: TextStyle(fontSize: 36),
          ),
          Text(
            'This is my text',
            style: TextStyle(fontSize: 36),
          ),
        ],
      ),
    );
  }
}

class MyListViewBuilder extends StatelessWidget {
  const MyListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: 60,
            itemBuilder: ((context, index) {
              return Container(
                color: Color.fromARGB(255, 60, 128, 184),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello',
                      style: TextStyle(color: Colors.red, fontSize: 36),
                    ),
                    Text(
                      'Hello',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 36),
                    ),
                  ],
                ),
              );
            })));
  }
}

class MyAnimatedContainer extends StatefulWidget {
  @override
  State<MyAnimatedContainer> createState() => _MyAnimatedContainerState();
}

var myDuration = 1;
double rectangleValue = 50;
Color? myColor = Colors.lightGreenAccent;
var isClicked = true;

class _MyAnimatedContainerState extends State<MyAnimatedContainer> {
  void _expandBox() {
    setState(() {
      if (isClicked) {
        rectangleValue = 100;
        myColor = Colors.deepPurpleAccent;
        isClicked = !isClicked;
      } else {
        rectangleValue = 50;
        myColor = Colors.lightGreenAccent;
        isClicked = !isClicked;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _expandBox,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 21, 21, 21),
        body: Center(
            child: AnimatedContainer(
          width: rectangleValue,
          height: rectangleValue,
          curve: Curves.bounceInOut,
          duration: Duration(seconds: myDuration),
          color: myColor,
        )),
      ),
    );
  }
}
