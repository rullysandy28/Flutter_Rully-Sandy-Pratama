import 'package:flutter/material.dart';
import 'package:flutter_form/page/contact_page.dart';
import 'package:flutter_form/page/gallery.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: GalleryPage(),
      // theme: ThemeData.dark(), 
    );
  }
}
