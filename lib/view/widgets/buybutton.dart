import 'package:flutter/material.dart';


class BuyButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
   BuyButton({
  required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: Text(text),

    );
  }
}