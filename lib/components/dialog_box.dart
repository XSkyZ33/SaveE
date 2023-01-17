import 'package:flutter/material.dart';
import 'my_button.dart';


class DialogBox extends StatelessWidget {
  final TextEditingController salaController;
  final TextEditingController tipoController;
  final TextEditingController descricaoController;

  VoidCallback OnCancel;
  VoidCallback OnSave;

  DialogBox({super.key,
      required this.salaController,
      required this.tipoController,
      required this.descricaoController,
      required this.OnCancel,
      required this.OnSave}
      );

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
                  controller: salaController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Sala"
                  ),
                ),
              ),
              SizedBox(height: 15),
              TextField(
                controller: tipoController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "tipo de erro"
                ),
              ),
              SizedBox(height: 15),
              TextField(
                controller: descricaoController,
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
