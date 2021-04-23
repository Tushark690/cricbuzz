import 'package:flutter/material.dart';

class BannerCard extends StatelessWidget {
  String heading = "17th Match Indian Premiere League 2021";

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.all(10),
        // color: Colors.grey,
        child: Card(
          color: Colors.grey,
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
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Icon(Icons.shield),
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
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Icon(Icons.shield),
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
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Expanded(child: Text("Punjab Kings need 50 runs in 42 balls",style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.w600),))
                          ],
                        ),
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
                          FlatButton(onPressed: (){}, child: Text("POINTS TABLE")),
                          FlatButton(onPressed: (){}, child: Text("Schedule"))
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
