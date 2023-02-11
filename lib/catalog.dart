import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/components/components.dart';
import 'package:flutter_application_1/viewEvents.dart';

import 'homeUsers.dart';

class Catalog extends StatefulWidget {
  const Catalog({super.key});

  @override
  State<Catalog> createState() => _CatalogState();
}

class _CatalogState extends State<Catalog> {
  

  var listScrollController = new ScrollController();
  var scrollDirection = ScrollDirection.idle;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
appBar: AppBar(
        backgroundColor: Color(0xff827BE9),
        elevation: 0,
        leading: IconButton(onPressed: (() {
          Navigator.pop(context);
        }),
        icon: Icon(Icons.arrow_back_ios_new, color: Color(0xff827BE9),),
      ),
      ),
      body: 
      
      SingleChildScrollView(
        child: Column(
          children: [
             Container(
          height: MediaQuery.of(context).size.height * 0.2,
        
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.2 - 27,
                decoration: BoxDecoration(
                  
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(36), bottomRight: Radius.circular(36)),
                ),
                child: Row(
                  children: [
                    Text("Confira nossos eventos!", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xff827BE9), fontSize: 25.0),)
                  ],
                ),
              ),
             
            ],
          ),
        ),
            SingleChildScrollView(
              child: Column(
                children: [
                  CardsComponents(
                title: "Informação",
                  ),
                  CardsComponents(
                  title: "Educação",
                  ),
                  CardsComponents(
                   title: "Saúde",
                   
                  ),
                   CardsComponents(
                   title: "Tecnologia",
                   
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff827BE9),
        onPressed: () {},
        child: const Icon(Icons.home),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Color(0xff827BE9),
        child: IconTheme(
          data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.help,
                    size: 30,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications_outlined,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
