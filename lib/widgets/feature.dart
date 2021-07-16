import 'package:flutter/material.dart';

class Feature extends StatelessWidget {
  final String name;
  final String description;

  const Feature({Key key, this.name, this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('$name',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
        Text(
          '$description',
          style: TextStyle(
            fontSize: 14,
            color: Color(0xffCCCACA),
          ),
        ),
      ],
    );
  }
}
