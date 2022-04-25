// importação
import 'package:flutter/material.dart';

class AbilityDetailTitle extends StatelessWidget {
  final int id;
  final String name;

  const AbilityDetailTitle({Key? key, required this.id, required this.name})
      : super(key: key);

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
