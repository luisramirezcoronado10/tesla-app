import 'package:flutter/material.dart';

class BarActive extends StatelessWidget {
  const BarActive({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 121,
      width: 4,
      decoration: BoxDecoration(
        color: Color(0xff707070),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
