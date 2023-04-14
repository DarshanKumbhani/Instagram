import 'package:flutter/material.dart';
import 'package:instagram/Screen/home_screen.dart';
import 'package:instagram/Screen/liked_screen.dart';
import 'package:instagram/Screen/profile_screen.dart';
import 'package:instagram/Screen/search_scree.dart';



class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  int i=0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            bottomNavigationBar:Container(
             height: 50,
              alignment: Alignment.center,
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 GestureDetector(onTap: (){
                   setState(() {
                     i=0;
                   });
                 },
                   child: Icon(Icons.home_outlined,color:Colors.black)),
                  GestureDetector(onTap: (){
                    setState(() {
                      i=1;
                    });
                  },
                      child:  Icon(Icons.search,color: Colors.black)),
                    GestureDetector(onTap: (){
                    setState(() {
                      i=2;
                    });
                   },
                      child: Icon(Icons.favorite_outline_rounded,color: Colors.black)),
                    GestureDetector(onTap: (){
                    setState(() {
                      i=3;
                    });
                  },
                      child: Icon(Icons.person_outline_rounded,color: Colors.black)),
               ],
            )
            ),
          body: Column(
            children: [
              Expanded(
                child: IndexedStack(
                  index: i,
                  children: [
                    Home_screen(),
                    Search_screen(),
                    Liked_screen(),
                    Profile_screen(),
                    // home search like profile
                  ],
                ),
              ),
            ],
          ),
        ),

    );
  }
}
