import 'package:flutter/material.dart';
import 'package:flutter_form/theme/theme_color.dart';

class ButtonWidget extends StatelessWidget {
  final String title;
  final Function()? onPressed;

  const ButtonWidget({
    super.key,
    required this.title,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(94, 40),
        backgroundColor: ThemeColor().primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        title,
      ),
    );
  }
}
