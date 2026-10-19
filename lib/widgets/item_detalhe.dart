// DESAFIO EXTRA (opcional)
import 'package:flutter/material.dart';

class ItemDetalhe extends StatelessWidget {
  final IconData icone;
  final Color cor;
  final String valor;

  const ItemDetalhe({
    super.key,
    required this.icone,
    required this.cor,
    required this.valor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icone, color: cor, size: 32),
        Text(valor),
      ],
    );
  }
}