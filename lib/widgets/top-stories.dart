import 'package:flutter/material.dart';

class TopStories extends StatelessWidget {
  final String topHeading,url,subHeading1,subHeadDef,subHeading2;
  TopStories(this.topHeading,this.url,this.subHeading1,this.subHeadDef,this.subHeading2);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: InkWell(
        onTap: (){},
        splashColor: Colors.grey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.all(10),
                child: Text(topHeading,style: TextStyle(color: Colors.black54,fontSize: 12),)),
            Image.network(url),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(subHeading1,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                  SizedBox(height: 5,),
                  Text(subHeadDef,style: TextStyle(color: Colors.black54,fontSize: 13),),
                  subHeading2.isNotEmpty? Divider():Container(),
                  subHeading2.isNotEmpty?Text(subHeading2,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),):Container(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

