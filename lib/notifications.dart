import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  // List notifications = [
  //   {
  //     "title": 'PRESENTE!',
  //     "description": 'José Ribeiro teve sua presença computada'
  //   },
  //   {
  //     "title": 'PRESENTE!',
  //     "description": 'José Ribeiro teve sua presença computada'
  //   }
  // ];
  List notifications = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(184, 184, 255, 1),
      appBar: AppBar(
        elevation: 0,
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back_ios_new_outlined, color: Color.fromRGBO(184, 184, 255, 1),),),
        backgroundColor: Color(0xFFF8F7FF),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'NOTIFICAÇÕES',
              style: TextStyle(
                color: Color(0xFF6A60FA),
              ),
            ),
            SizedBox(
              width: 22,
            ),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xFF6A60FA),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(child: Icon(Icons.notifications)),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          if (notifications.length == 0)
            Center(
              child: Text(
                'SEM NOTIFICAÇÕES DISPONIVEIS',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF6A60FA),
                ),
              ),
            )
          else
            (Expanded(
                child: ListView.builder(
              itemCount: notifications.length,
              itemBuilder: (context, index) {
                return (Column(
                  children: [
                    _NotificationCard(index),
                    SizedBox(
                      height: 30,
                    )
                  ],
                ));
              },
            )))
/*
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF6A60FA),
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(22, 0, 22, 0),
                        child: Container(
                          width: 140,
                          height: 55,
                          decoration: BoxDecoration(
                            color: Color(0xFFCCCCFF),
                          ),
                          child: Center(
                            child: Text(
                              'PRESENTE!',
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                color: Color(0xFF6A60FA),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                // SizedBox(
                //   width: 30,
                // ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Column(
                    children: [
                      Text(
                        'IMPORTANTE!',
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          color: Color(0xFF6A60FA),
                        ),
                      ),
                      Text(
                        'Klara Kastanho teve sua presença computada',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFffffff),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            */
        ],
      ),
    );
  }

  _NotificationCard(index) {
    return (Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Color(0xFF6A60FA),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(22, 0, 22, 0),
                child: Container(
                  width: 140,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Color(0xFFCCCCFF),
                  ),
                  child: Center(
                    child: Text(
                      notifications[index]["title"],
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        color: Color(0xFF6A60FA),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        // SizedBox(
        //   width: 30,
        // ),
        Container(
          width: MediaQuery.of(context).size.width * 0.5,
          child: Column(
            children: [
              Text(
                'IMPORTANTE!',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF6A60FA),
                ),
              ),
              Text(
                notifications[index]["description"],
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFffffff),
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}
