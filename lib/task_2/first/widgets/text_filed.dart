import 'package:flutter/material.dart';

class TextFFiled extends StatefulWidget {
  const TextFFiled(
      {super.key,
      required this.label,
      required this.contrller,
      this.keyboardType = TextInputType.name,
      this.maxLength = 50});
  final String label;
  final TextEditingController contrller;
  final TextInputType keyboardType;
  final int maxLength;

  @override
  State<TextFFiled> createState() => _TextFFiledState();
}

class _TextFFiledState extends State<TextFFiled> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.keyboardType,
      maxLength: widget.maxLength,
      controller: widget.contrller,
      cursorColor: const Color.fromARGB(255, 234, 70, 58),
      decoration: InputDecoration(
        hintText: widget.label,
        filled: true,
        fillColor: Colors.grey[70],
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromARGB(255, 234, 70, 58),
            ),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
      ),
    );
  }
}
