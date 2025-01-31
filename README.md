

# **Done Keyboard** 🏆
A Flutter package that adds a **"Done" button** above the keyboard, making it easier to dismiss the keyboard and avoid UI overlaps. It ensures input fields remain visible when the keyboard is open, enhancing the user experience.



---

## **✨ Features**
✅ Adds a **"Done" button** above the keyboard for easy dismissal  
✅ Automatically **adjusts the UI** to prevent input fields from being hidden  
✅ Supports **multiple focus nodes** for better form navigation  
✅ Lightweight and **easy to integrate** into any Flutter project

---


```dart
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


```

```dart

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
        config: KeyboardDoneConfiguration(
          context: context,
          focusNodes: [_focusNode],
        ).buildConfig,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Example usage of DoneKeyboard package",
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
```

## **🚀 Installation**
Add the following dependency to your `pubspec.yaml`:
```yaml
dependencies:
  done_keyboard: latest_version
```