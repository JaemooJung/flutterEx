import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget Lifecycle',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Statelees? or Stateful?'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 41;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
    if (_counter == 42) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Answer to the Ultimate Question of Life, the Universe, and Everything'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(widget.title),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline2,
            ),
            ElevatedButton(
              onPressed: _incrementCounter,
              child: const Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}

PreferredSizeWidget _buildAppBar(String title) {
  return AppBar(
    title: Text(title),
  );
}
