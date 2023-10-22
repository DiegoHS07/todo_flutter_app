import 'package:flutter/material.dart';

class ToDoButton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
  ToDoButton({
    super.key, 
    required this.text,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Theme.of(context).primaryColor,
      child: Text(text),
    );
  }
}
