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
      valor: 154.00,
      data: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransacaoLista(_transacoes),
        TransacaoForm(),
      ],
    );
  }
}
