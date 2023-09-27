import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'prioritas1_no1.dart';
import 'prioritas1_no2.dart';
import 'prioritas2.dart';
import 'eksplorasi.dart';

void main() {
  runApp(const App());
}

//main for ios/cupertino
// void main() {
//   runApp(CupertinoApp(
//     theme: _themeDark,
//     home: CupertinoIos(),
//   ));
// }

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: const HomePage(),
      home: const Eksplorasi(),
      // theme: ThemeData.dark(),
    );
  }
}

// final _themeDark = const CupertinoThemeData.raw(
//     Brightness.dark, null, null, null, null, null, null);
