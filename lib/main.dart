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
      home: const MyWrapWidget(),
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
                child: const Center(
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
              child: Container(
                  color: Colors.redAccent,
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SafeAreaWidget()));
                      },
                      child: Text('Switch to next Widget'),
                    ),
                  )))
        ],
      ),
    );
  }
}

class SafeAreaWidget extends StatefulWidget {
  const SafeAreaWidget({super.key});

  @override
  State<SafeAreaWidget> createState() => _SafeAreaWidgetState();
}

class _SafeAreaWidgetState extends State<SafeAreaWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.deepPurpleAccent,
              ),
            ),
            Expanded(
                child: Container(
              color: Colors.blue,
              child: const Center(
                  child: Center(
                child: Text('Go back'),
              )),
            ))
          ],
        ),
      ),
    );
  }
}

class MyWrapWidget extends StatelessWidget {
  const MyWrapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightGreen,
        body: SafeArea(
          child: Wrap(
            spacing: 40,
            runSpacing: 40,
            direction: Axis.horizontal,
            alignment: WrapAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.amber,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.purpleAccent,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.blueGrey,
              ),
              Text(
                textAlign: TextAlign.center,
                'This is my Wrap widget! It\'s so much fun! 🤓 ',
                style: TextStyle(
                  fontSize: 36,
                ),
              )
            ],
          ),
        ));
  }
}
