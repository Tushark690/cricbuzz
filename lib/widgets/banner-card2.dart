import 'package:flutter/material.dart';

class BannerCard2 extends StatefulWidget {
  @override
  _BannerCard2State createState() => _BannerCard2State();
}

class _BannerCard2State extends State<BannerCard2> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Container(
          child: Card(
            child: Image.network(
              "https://tpc.googlesyndication.com/simgad/4695459442067522482",
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
