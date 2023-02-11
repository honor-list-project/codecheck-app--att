import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../cardsinfos.dart';

 late TabController controller;
  
  var listScrollController = new ScrollController();
  var scrollDirection = ScrollDirection.idle;
class CardsComponents extends StatelessWidget {
  const CardsComponents({super.key, required this.title});

  final String title;
  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      reverse: true,
      child: Column(
        children: [
          Stack(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: 20,
                    ),
                    child: Text(
                      "$title",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            height: 320,
            padding: EdgeInsets.symmetric(vertical: 16),
            child: ListView(
              controller: listScrollController,
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  height: 270,
                  width: MediaQuery.of(context).size.width / 2.5,
                  margin: EdgeInsets.only(left: 20, bottom: 20.0 * 3.5),
                  child: Column(
                    children: [
                      Image.network(
                          "https://blog.unimar.br/wp-content/uploads/2022/04/Flisol.jpeg"),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 50,
                                color: Colors.grey.withOpacity(0.4),
                              )
                            ]),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Evento\n",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                          text: "Marília, SP",
                                          style: TextStyle(color: Colors.grey)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 7),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(0),
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                    ),
                                    primary: Color(0xFF6A60FA),
                                  ),
                                     onPressed: (){
                                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => CardsInfos()),
                            );
                                  }, 
                                  child: Text(
                                    'Ver mais',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                //Separação

                Container(
                  height: 270,
                  width: MediaQuery.of(context).size.width / 2.5,
                  margin: EdgeInsets.only(left: 20, bottom: 20.0 * 2.5),
                  child: Column(
                    children: [
                      Image.network(
                          "https://www.univem.edu.br/storage/eventos/September2021/Data_semama_TI.jpeg"),
                      Container(
                        decoration:
                            BoxDecoration(color: Colors.white, boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 10),
                           blurRadius: 50,
                            color: Colors.grey.withOpacity(0.4),
                          )
                        ]),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Evento\n",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                          text: "Marília, SP",
                                          style: TextStyle(color: Colors.grey))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 7),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                    ),
                                    primary: Color(0xFF6A60FA),
                                  ),
                                     onPressed: (){
                                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => CardsInfos()),
                            );
                                  }, 
                                  child: Text(
                                    'Ver mais',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                //Separação

                 Container(
                  height: 270,
                  width: MediaQuery.of(context).size.width / 2.5,
                  margin: EdgeInsets.only(left: 20, bottom: 20.0 * 2.5),
                  child: Column(
                    children: [
                      Image.network(
                          "https://blog.unimar.br/wp-content/uploads/2022/04/Flisol.jpeg"),
                      Container(
                        decoration:
                            BoxDecoration(color: Colors.white, boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 10),
                           blurRadius: 50,
                            color: Colors.grey.withOpacity(0.4),
                          )
                        ]),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Evento\n",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                          text: "Marília, SP",
                                          style: TextStyle(color: Colors.grey))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 7),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                    ),
                                    primary: Color(0xFF6A60FA),
                                  ),
                                     onPressed: (){
                                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => CardsInfos()),
                            );
                                  }, 
                                  child: Text(
                                    'Ver mais',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                //Separação

                 Container(
                  height: 270,
                  width: MediaQuery.of(context).size.width / 2.5,
                  margin: EdgeInsets.only(left: 20, bottom: 20.0 * 2.5),
                  child: Column(
                    children: [
                      Image.network(
                          "https://www.univem.edu.br/storage/eventos/September2021/Data_semama_TI.jpeg"),
                      Container(
                        decoration:
                            BoxDecoration(color: Colors.white, boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 10),
                           blurRadius: 50,
                            color: Colors.grey.withOpacity(0.4),
                          )
                        ]),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Evento\n",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                          text: "Marília, SP",
                                          style: TextStyle(color: Colors.grey))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 7),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                    ),
                                    primary: Color(0xFF6A60FA),
                                  ),
                                     onPressed: (){
                                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => CardsInfos()),
                            );
                                  }, 
                                  child: Text(
                                    'Ver mais',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                //Separação

                 Container(
                  height: 270,
                  width: MediaQuery.of(context).size.width / 2.5,
                  margin: EdgeInsets.only(left: 20, bottom: 20.0 * 2.5),
                  child: Column(
                    children: [
                      Image.network(
                          "https://blog.unimar.br/wp-content/uploads/2022/04/Flisol.jpeg"),
                      Container(
                        decoration:
                            BoxDecoration(color: Colors.white, boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 10),
                           blurRadius: 50,
                            color: Colors.grey.withOpacity(0.4),
                          )
                        ]),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Evento\n",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                          text: "Marília, SP",
                                          style: TextStyle(color: Colors.grey))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 7),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                    ),
                                    primary: Color(0xFF6A60FA),
                                  ),
                                     onPressed: (){
                                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => CardsInfos()),
                            );
                                  }, 
                                  child: Text(
                                    'Ver mais',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}