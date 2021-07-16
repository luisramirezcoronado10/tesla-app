import 'package:flutter/material.dart';

class Bar extends StatelessWidget {
  const Bar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 121,
      width: 2,
      decoration: BoxDecoration(
        color: Color(0xffCCCACA),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
