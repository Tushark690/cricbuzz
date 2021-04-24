import 'package:flutter/material.dart';

class Sponsored extends StatelessWidget {

  final String topHeading,url;
  Sponsored(this.topHeading,this.url);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: InkWell(
        onTap: (){},
        splashColor: Colors.grey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.all(10),
                child: Text(topHeading,style: TextStyle(color: Colors.black54,fontSize: 12),)),
            Image.network(url,fit: BoxFit.fill,width: double.infinity,),

            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Image.network("https://etimg.etb2bimg.com/photo/63326630.cms",height: 80,),
                        SizedBox(width: 15,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Dream11 Fantasy Cricket",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                                    Text("Make your team and win BIG!",style: TextStyle(fontSize: 16,color: Colors.black54),),
                                  ],
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                MaterialButton(onPressed: (){},child: Text("PLAY NOW",style: TextStyle(color: Colors.white),),color: Colors.orange,),
                              ],
                            )
                          ],
                        ),

                      ],
                    ),
                  SizedBox(height: 10,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
