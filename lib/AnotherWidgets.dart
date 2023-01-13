//Part two of widgets

//ListView

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
