import 'package:flutter/material.dart';

class SelectorColor extends StatelessWidget {
  final Color color;
  const SelectorColor({Key key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        // color: Colors.red,
        color: color,
      ),
    );
  }
}
