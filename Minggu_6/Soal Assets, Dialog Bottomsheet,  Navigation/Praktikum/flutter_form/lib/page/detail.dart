import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('halaman detail'),
      ),
      body: Center(
        child: Text('Halaman Detail'),
      ),
    );
  }
}
