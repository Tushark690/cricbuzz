import 'package:flutter/material.dart';

class BannerCard2 extends StatefulWidget {
  @override
  _BannerCard2State createState() => _BannerCard2State();
}

class _BannerCard2State extends State<BannerCard2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*8/10,
      child: Card(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image.network(
            "https://tpc.googlesyndication.com/simgad/4695459442067522482",
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
