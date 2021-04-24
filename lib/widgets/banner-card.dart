import 'package:flutter/material.dart';

class BannerCard extends StatelessWidget {
  String heading = "17th Match Indian Premiere League 2021";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10,right: 10),
      child: Container(
        // padding: EdgeInsets.all(10),
        // color: Colors.grey,
        width: MediaQuery.of(context).size.width*8/10,
        child: Card(
          color: Color(0xffecebeb),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    color: Colors.white,
                    padding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                heading,
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black54),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Text("\ud83c\udde6\ud83c\uddeb",style: TextStyle(fontSize: 18),),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("PBKS",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),)
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  Text("82-1 (13)",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 17),)

                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Text("\ud83c\uddee\ud83c\uddf3",style: TextStyle(fontSize: 18),),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("PBKS",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),)
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  Text("82-1 (13)",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 17),)

                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15,),
                        Row(
                          children: [
                            Expanded(child: Text("Punjab Kings need 50 runs in 42 balls",style: TextStyle(color: Color(0XFFd0021b),fontSize: 16,fontWeight: FontWeight.w400),))
                          ],
                        ),
                        SizedBox(height: 5,),
                        // Spacer(),

                      ],
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: IconButton(
                      icon: Icon(Icons.notifications_none_outlined),
                    ),
                  ),
                ],
              ),
              // Spacer(),
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          FlatButton(onPressed: (){}, child: Text("POINTS TABLE",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15,color: Colors.black54),)),
                          FlatButton(onPressed: (){}, child: Text("SCHEDULE",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15,color: Colors.black54),))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
