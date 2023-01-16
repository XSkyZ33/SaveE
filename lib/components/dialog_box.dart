import 'package:flutter/material.dart';
import 'my_button.dart';


class DialogBox extends StatelessWidget {
  final controller;

  VoidCallback OnCancel;
  VoidCallback OnSave;

  DialogBox({super.key, required this.controller, required this.OnCancel, required this.OnSave});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      content: Container(
        height: 328,
        child: Center(
          child: Column(
            children:  [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: TextField(
                  controller: controller,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Sala"
                  ),
                ),
              ),
              SizedBox(height: 15),
              TextField(
                controller: controller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "tipo de erro"
                ),
              ),
              SizedBox(height: 15),
              TextField(
                controller: controller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "descricao"
                ),
              ),
              SizedBox(height: 15),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(child: MyButton(text: "Aviso", onPressed: OnSave)),

                  const SizedBox(width: 20),

                  Center(child: MyButton(text: "Cancelar", onPressed: OnCancel)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
