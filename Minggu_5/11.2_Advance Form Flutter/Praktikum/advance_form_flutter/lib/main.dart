import 'package:advance_form_flutter/form_picker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: const HomePage(),
      home: FormPicker(),
      // theme: ThemeData.dark(),
    );
  }
}
