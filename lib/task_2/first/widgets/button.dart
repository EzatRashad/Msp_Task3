import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    this.fun,
    required this.icon,
    this.width = 50,
  });
  final void Function()? fun;
  final Widget icon;
  final double width;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: fun,
      child: Container(
        height: 40,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: const Color.fromARGB(255, 234, 70, 58),
          ),
          color: Colors.grey[70],
        ),
        child: Center(child: icon),
      ),
    );
  }
}
