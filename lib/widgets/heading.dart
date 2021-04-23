import 'package:flutter/material.dart';

class Heading extends StatelessWidget {

  String text="Featured Matches";
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(text,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
      ),
    );
  }
}
