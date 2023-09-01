import 'package:flutter/material.dart';

class TransacaoForm extends StatefulWidget {
  final void Function(String, double) quandoSubmeter;

  const TransacaoForm(this.quandoSubmeter, {super.key});

  @override
  State<TransacaoForm> createState() => _TransacaoFormState();
}

class _TransacaoFormState extends State<TransacaoForm> {
  final tituloController = TextEditingController();

  final valorController = TextEditingController();

  _submeterFormulario() {
    final String titulo = tituloController.text;
    final double valor = double.tryParse(valorController.text) ?? 0.0;

    if (titulo.isEmpty || valor <= 0) {
      return;
    }

    widget.quandoSubmeter(titulo, valor);
  }

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
              onSubmitted: (value) => _submeterFormulario(),
              decoration: const InputDecoration(
                labelText: 'Título',
              ),
            ),
            TextField(
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              controller: valorController,
              onSubmitted: (value) => _submeterFormulario(),
              decoration: const InputDecoration(
                labelText: 'Valor',
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextButton(
                  onPressed: _submeterFormulario,
                  child: const Text(
                    'Nova transação',
                    style: TextStyle(
                      color: Colors.purple,
                    ),
                  ),
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
