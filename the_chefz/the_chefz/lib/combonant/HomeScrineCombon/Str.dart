import 'package:flutter/material.dart';

class StrText extends StatelessWidget {
  const StrText({
    super.key,
    required this.str,
  });
  final String str;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            str,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}