import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form/theme/theme_color.dart';

class TextFieldWidget extends StatelessWidget {
  final String labelText;
  final String hintText;
  final Function(String)? onChanged;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatter;
  final TextCapitalization textCapitalization;
  final int? maxLength;

  const TextFieldWidget({
    super.key,
    required this.hintText,
    required this.labelText,
    this.onChanged,
    this.controller,
    this.keyboardType,
    this.inputFormatter,
    this.textCapitalization = TextCapitalization.none,
    this.maxLength,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(color: ThemeColor().primary),
          hintText: hintText,
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ThemeColor().primary),
            borderRadius: BorderRadius.circular(7),
          ),
        ),
        onChanged: onChanged,
        keyboardType: keyboardType,
        inputFormatters: inputFormatter,
        textCapitalization: textCapitalization,
        maxLength: maxLength,
      ),
    );
  }
}
