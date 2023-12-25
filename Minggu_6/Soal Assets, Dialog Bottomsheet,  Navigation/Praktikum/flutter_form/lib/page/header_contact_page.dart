import 'package:flutter/material.dart';
import 'package:flutter_form/theme/theme_color.dart';

class HeaderContactPage extends StatefulWidget {
  const HeaderContactPage({super.key});

  @override
  State<HeaderContactPage> createState() => _HeaderContactPageState();
}

class _HeaderContactPageState extends State<HeaderContactPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        16,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Icon(
              Icons.android,
              color: ThemeColor().primary,
            ),
          ),
          const Text(
            "Create New Contact",
            style: TextStyle(fontSize: 25),
          ),
          const SizedBox(
            height: 16,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              "A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made",
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Divider(
              height: 17,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
