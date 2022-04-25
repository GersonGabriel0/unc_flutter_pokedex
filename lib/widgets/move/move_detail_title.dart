// importação
import 'package:flutter/material.dart';

// widget com dados imutáveis
class MoveDetailTitle extends StatelessWidget {
  // definição de variáveis
  final int id;
  final String name;

  // construtor de classe com parametros obrigatórios
  const MoveDetailTitle({
    Key? key,
    required this.id,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: Colors.black,
      label: Text(
        "${name[0].toUpperCase()}${name.substring(1)}",
        style: const TextStyle(
          fontSize: 45,
          color: Colors.white,
        ),
      ),
      avatar: CircleAvatar(
        child: Text(
          id.toString(),
        ),
      ),
    );
  }
}
