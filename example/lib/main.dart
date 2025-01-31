import 'package:done_keyboard/done_keyboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyExampleApp());
}

class MyExampleApp extends StatelessWidget {
  const MyExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Done Keyboard Example",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const KeyboardExampleScreen(),
    );
  }
}

class KeyboardExampleScreen extends StatefulWidget {
  const KeyboardExampleScreen({super.key});

  @override
  State<KeyboardExampleScreen> createState() => _KeyboardExampleScreenState();
}

class _KeyboardExampleScreenState extends State<KeyboardExampleScreen> {
  final TextEditingController _inputController = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Done Keyboard Example")),
      body: KeyboardActions(
        /// by Default KeyboardActions is scrollable.
        /// If you don't want KeyboardActions to manage the scroll then you need make
        /// autoScroll : false
        autoScroll: false,
        config: KeyboardDoneConfiguration(
          context: context,
          focusNodes: [_focusNode],
        ).buildConfig,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Enter Demo Text",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _inputController,
                focusNode: _focusNode,
                decoration: InputDecoration(
                  hintText: 'Enter text here...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 14,
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
