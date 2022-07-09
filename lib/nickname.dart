import 'package:flutter/material.dart';

class NickName extends StatelessWidget {
  final String name;

  const NickName(this.name, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: const TextStyle(
        fontSize: 12,
        color: Colors.grey,
      ),
    );
  }
}
