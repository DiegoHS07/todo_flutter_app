import 'package:flutter/material.dart';
import 'package:todo_flutter_app/utilities/todo_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox({
    super.key, 
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.green,
      content: Container(
        height: 120,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          TextField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Agregar nueva tarea..",
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            ToDoButton(text: "Guardar", onPressed: onSave),
            const SizedBox(width: 8),
            ToDoButton(text: "Cancelar", onPressed: onCancel),
          ]),
        ]),
      ),
    );
  }
}
