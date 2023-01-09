import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.deepPurpleAccent,
            ),
          ),
          Expanded(
              flex: 3,
              child: Container(
                child: Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    'This is my Expanded widget of the week test 📱',
                    style: TextStyle(fontSize: 26, color: Colors.white70),
                  ),
                ),
                color: Colors.lightGreen,
              )),
          Expanded(
            flex: 1,
            child: Container(color: Colors.redAccent),
          )
        ],
      ),
    );
  }
}
