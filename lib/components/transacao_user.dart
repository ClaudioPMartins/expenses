import 'dart:math';

import 'package:expenses/components/transacao_lista.dart';
import 'package:flutter/material.dart';
import 'package:expenses/models/transacao.dart';
import 'package:expenses/components/transacao_form.dart';

class TransacaoUser extends StatefulWidget {
  const TransacaoUser({super.key});

  @override
  State<TransacaoUser> createState() => _TransacaoUserState();
}

class _TransacaoUserState extends State<TransacaoUser> {
  final List<Transacao> _transacoes = <Transacao>[
    /*Transacao(
      id: 't1',
      titulo: 'Compra de tenis',
      valor: 523.34,
      data: DateTime.now(),
    ),
    Transacao(
      id: 't2',
      titulo: 'Caneca',
      valor: 154.00,
      data: DateTime.now(),
    ),*/
  ];

  _addTransacao(String titulo, double valor) {
    final novaTransacao = Transacao(
      id: Random().nextDouble().toString(),
      titulo: titulo,
      valor: valor,
      data: DateTime.now(),
    );

    setState(() {
      _transacoes.add(novaTransacao);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransacaoForm(_addTransacao),
        TransacaoLista(_transacoes),
      ],
    );
  }
}
