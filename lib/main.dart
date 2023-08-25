import 'package:expenses/models/transacao.dart';
import 'package:flutter/material.dart';

main() => runApp(const ExpensesApp());

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final _transacoes = [
    Transacao(
      id: 't1',
      titulo: 'Compra de tenis',
      valor: 523.34,
      data: DateTime.now(),
    ),
    Transacao(
      id: 't2',
      titulo: 'Caneca',
      valor: 54.00,
      data: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Despesas Pessoais'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            child: Card(
              color: Colors.blue,
              elevation: 5,
              child: Text('Gráfico'),
            ),
          ),
          Column(
            children: _transacoes.map((tr) {
              return Card(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(58.0),
                      child: SizedBox(
                        child: Text(tr.valor.toString()),
                      ),
                    ),
                    Column(
                      children: [
                        Text(tr.titulo),
                        Text(tr.data.toString()),
                      ],
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
