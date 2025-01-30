import 'package:flutter/material.dart';

void main() {

  runApp(MyExampleApp());
}

class MyExampleApp extends StatelessWidget {
  const MyExampleApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Done Keyboard Example")),
        body: Center(
          child: Text("Example usage of DoneKeyboard package"),
        ),
      ),
    );
  }
}
