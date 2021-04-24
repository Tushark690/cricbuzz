import 'package:flutter/material.dart';

class FVideos extends StatelessWidget {
  final imageUrl,heading,time;
  FVideos(this.imageUrl,this.heading,this.time);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        width: MediaQuery.of(context).size.width*7/10,
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5)),
                  child: Image.network(imageUrl)),
              Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(child: Text(heading,style: TextStyle(fontWeight: FontWeight.w600),)),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Text(time,style: TextStyle(color: Colors.black54),)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
