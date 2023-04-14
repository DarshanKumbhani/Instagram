import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({Key? key}) : super(key: key);

  @override
  State<Home_screen> createState() => _Home_screenState();
}
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
List story_name=[
  "your story",
  "cutie_girl_01",
  "mr_majnu_31",
  "i_am_avi.20",
  "itz_kano07",
  "sneh_sojitra",
  "diya_07",
  "darshan_sankhat",
  "yash_003",
  "yashu_08",
  "nature_lover",
  "radhu_05",
];
List post_img=[
  "assets/Image/boys+.jpg",
  "assets/Image/boys.jfif",
  "assets/Image/girls.jfif",
  "assets/Image/girls.jpg",
  "assets/Image/img1boys.jfif",
  "assets/Image/img2boys.jfif",
  "assets/Image/img3boys.jpg",
  "assets/Image/img4boys.jpg",
  "assets/Image/img5boys.jfif",
  "assets/Image/girls1.jpg",
  "assets/Image/girls2.jfif",
  "assets/Image/girls3.jpg",

];

class _Home_screenState extends State<Home_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Instagram",
          style: GoogleFonts.lobster(fontSize: 30,color: Colors.white)
        ),
        actions: [
           Icon(Icons.add_box_outlined,size: 25,),
          SizedBox(width: 20,),
          Image.asset(
            "assets/Image/logo..jpg",

            width: 20,
            height: 20,
          ),
          SizedBox(width: 30,)
        ],
      ),
        body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 110,
                width: double.infinity,
                alignment: Alignment.center,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: story_img
                        .asMap()
                        .entries
                        .map((e) => Story(story_img[e.key],story_name[e.key]))
                        .toList(),
                  ),
                ),
              ),
              Column(
                  children: story_img
                      .asMap()
                      .entries
                      .map((e) =>
                      post(post_img[e.key],story_name[e.key], post_img[e.key]))
                      .toList()),
            ],
          ),
        ),
        )

    );

  }
  Widget Story(String story_img,String story_name,) {
    return Column(
      children: [
        Container(
          height: 55,
          width: 55,
          margin: EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red),
            shape: BoxShape.circle,
          ),
          alignment: Alignment.center,
          child: CircleAvatar(
            radius: 22,
            backgroundImage: AssetImage("$story_img"),
          ),
        ),

        Text(
          "$story_name", style: TextStyle(color: Colors.white, fontSize: 10),)
      ],
    );
  }


  Widget post(String post_img, String Data, String img1,) {
    return Stack(
      children: [
        Container(
          height: 500,
          width: double.infinity,
          color: Colors.black,
          alignment: Alignment.center,
          child: Container(
            width: double.infinity,
            height: 400,
            color: Colors.black,
            child: Image.asset("$img1", fit: BoxFit.fill),
          ),
        ),
        Container(
          height: 40,
          width: 40,
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red.shade900),
            shape: BoxShape.circle,
          ),
          alignment: Alignment.center,
          child: CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage("$post_img"),
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 70, top: 16),
          child: Text(
            "$Data",
            style: TextStyle(color: Colors.white),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10,left: 470),
          child: Icon(
            Icons.more_vert,
            color: Colors.white,
            size: 20,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 470),
          child: Icon(
            Icons.favorite_border_rounded,
            color: Colors.white,
            size: 20,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 470, left: 55),
          child: Icon(
            Icons.mode_comment_outlined,
            color: Colors.white,
            size: 20,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 470, left: 110),
          child: Icon(
            Icons.send,
            color: Colors.white,
            size: 20,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 470, left: 470),
          child: Icon(
            Icons.bookmark,
            color: Colors.white,
            size: 20,
          ),
        ),
      ],
    );
  }
}

