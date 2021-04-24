import 'package:flutter/material.dart';

class Heading extends StatelessWidget {

  final String text;
  Heading(this.text);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(text,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
    );
  }
}
