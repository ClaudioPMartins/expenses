import 'package:flutter/material.dart';

class TransacaoForm extends StatelessWidget {
  TransacaoForm({super.key});

  final tituloController = TextEditingController();
  final valorController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(
              controller: tituloController,
              decoration: const InputDecoration(
                labelText: 'Título',
              ),
            ),
            TextField(
              controller: valorController,
              decoration: const InputDecoration(
                labelText: 'Valor',
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextButton(
                  child: const Text(
                    'Nova transação',
                    style: TextStyle(
                      color: Colors.purple,
                    ),
                  ),
                  onPressed: () {
                    print(tituloController.text);
                    print(valorController.text);
                  },
                ),
              ],
            ),
            //onPressed: onPressed, child: child)
          ],
        ),
      ),
    );
  }
}
