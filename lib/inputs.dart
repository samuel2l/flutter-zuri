import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  const Input({super.key, required this.hint, required this.controller});
  final String hint;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: hint,
          hintStyle: TextStyle(
              fontSize: 20, color: Colors.grey, fontWeight: FontWeight.w400),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide.none,
          ),
          // Search icon
          contentPadding: const EdgeInsets.all(13)),
      controller: controller,
      enableSuggestions: false,
      autocorrect: false,
      keyboardType: TextInputType.emailAddress,
    );
  }
}
