import 'package:flutter/material.dart';

class MoreButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Color(0xff35ad89),
            shape: BoxShape.circle
        ),
        child: Icon(Icons.arrow_forward_ios,color: Colors.white,),
      ),
    );
  }
}
