import 'package:flutter/material.dart';

class Liked_screen extends StatefulWidget {
  const Liked_screen({Key? key}) : super(key: key);

  @override
  State<Liked_screen> createState() => _Liked_screenState();
}

class _Liked_screenState extends State<Liked_screen> {
  List story_img=[
    "assets/Image/1st.jpg",
    "assets/Image/2st.jpg",
    "assets/Image/3st.jfif",
    "assets/Image/four.jpg",
    "assets/Image/five.jfif",
    "assets/Image/six,jpg",
    "assets/Image/seven.jpg",
    "assets/Image/eight.jpg",
    "assets/Image/nine.jfif",
    "assets/Image/ten.jpg",
    "assets/Image/eleven.jpg",
    "assets/Image/twelve.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Center(
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Center(child: Center(child: Text("Notifications",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white),))),
                    ],),
                ),
                SizedBox(height: 20,),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      alignment: Alignment.center,
                      child: Icon(Icons.person_add_outlined,size: 30,color: Colors.white,),
                      decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.white)),
                    ),
                    SizedBox(width: 50),
                    Container(
                      height: 40,
                      alignment: Alignment.centerLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Follow requests", style: TextStyle(fontSize: 18,color:
                          Colors.white)),
                          Text("Approve or ignore requests",style: TextStyle(fontSize: 14,color: Colors.white)),
                        ],
                      ),),
                  ],),
                SizedBox(height: 30,),

                Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    like("cutie_girl_01", "diya_07", 12, "assets/Image/1st.jpg",),
                    like("You", "itz_kano07", 5, "assets/Image/2st.jpg", ),
                    like("i_am_avi", "Rahul", 2,"assets/Image/3st.jfif",),
                    like("Rahul", "sneh_sojitra", 10,"assets/Image/four.jpg", ),
                    like("yash_003", "Dhoni", 8,"assets/Image/five.jfif",),
                    like("yashu_08", "cutie_girl_01", 5,"assets/Image/twelve.jpg" ,),
                    like("cutie_girl_01", "nature_lover", 15,"assets/Image/seven.jpg", ),
                    like("sneh_sojitra", "diya_07", 7,  "assets/Image/eight.jpg",),
                    like("darshan_sankhat", "diya_07", 1, "assets/Image/nine.jfif",),
                    like("radhu_05", "yashu_08", 5, "assets/Image/ten.jpg", ),
                    like("nature_lover", "Virat", 6,  "assets/Image/eleven.jpg",),
                    like("Raghav", "radhu_05", 20,"assets/Image/twelve.jpg", ),

                  ],
                ),

              ],

            ),
          ),
        ),
      ),
      backgroundColor: Colors.black,


    );
  }

  Widget like( String person1, String person2, int no, String iphoto)
  {
    return Container(
      height: 70,
      child: Row( mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            "$iphoto",
            width: 60,
            height: 60,
            fit: BoxFit.fill,
          ),
          SizedBox(width: 15),
          RichText(text: TextSpan(children: [
            TextSpan(text: "$person1 , $person2  & $no",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white)),
            TextSpan(text: "  liked your story",style: TextStyle(fontSize: 15,color: Colors.white)),
          ],))
        ],
      ),
    );
  }
}