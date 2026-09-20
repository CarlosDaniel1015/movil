import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const new({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: const Text('Unitecnar App')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$counter',
                style: TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
              ),
              Text(
                (counter == 1 ? 'click' : 'clicks'),
                style: TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
              ),
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              child: Icon(Icons.plus_one),
              onPressed: () {
                setState(() {
                  counter++;
                });
              },
            ),
            SizedBox(height: 30),
            FloatingActionButton(
              child: Icon(Icons.exposure_minus_1),
              onPressed: () {
                setState(() {
                  if (counter == 0) return;
                  counter--;
                });
              },
            ),
            SizedBox(height: 30),
            FloatingActionButton(
              child: Icon(Icons.replay_outlined),
              onPressed: () {
                setState(() {
                  counter = 0;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
