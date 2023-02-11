import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CardsInfos extends StatefulWidget {
  const CardsInfos({super.key});

  @override
  State<CardsInfos> createState() => _CardsInfosState();
}

class _CardsInfosState extends State<CardsInfos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff827BE9),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        elevation: 0,
        leading: IconButton(onPressed: (() {
          Navigator.pop(context);
        }),
        icon: Icon(Icons.arrow_back_ios_new, color: Color(0xff827BE9),),
      ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
           width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20.0),
                    height: MediaQuery.of(context).size.height * 0.5,
                    
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            
                          ),
                        ),
                        Image.network("https://cdn-icons-png.flaticon.com/512/2111/2111086.png",
                        height: MediaQuery.of(context).size.height * 0.7,
                        width: MediaQuery.of(context).size.width * 0.3,
                      
                       ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text("Nome do Evento", style: TextStyle(
                      color: Colors.black,
                      fontSize: 23.0,
                      fontWeight: FontWeight.w500,
                    ),),
                  ),
               
                      Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, magna aliqua. Ut eitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Exceborum.", style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18.0,
                    ),),
                    SizedBox(height: 18,),
                  
                ],
              ),
            ),
            Container(
          
              margin: EdgeInsets.all(20.0),
              padding: EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10.0,
              ),
              decoration: BoxDecoration(
                color: Color(0xff827BE9),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                
                 ElevatedButton(
                                    
                                    style:
                                    
                                    ElevatedButton.styleFrom(
                                      elevation: 4,
                                      padding: EdgeInsets.all(20),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                      ),
                                    primary: Color(0xFF6A60FA),
                                    ),
                                    onPressed: (){
                                   
                                    },  child: Text(
                                    ' Increva-se agora',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ) ,),
              ],)
            ),
          ],
        ),
      ),

    );
  }
}