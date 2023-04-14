import 'package:flutter/material.dart';

class Search_screen extends StatefulWidget {
  const Search_screen({Key? key}) : super(key: key);

  @override
  State<Search_screen> createState() => _Search_screenState();

}

class _Search_screenState extends State<Search_screen> {
  List img=[
    "assets/Image/img1.png",
    "assets/Image/img2.png",
    "assets/Image/img3.png",
    "assets/Image/img4.png",
    "assets/Image/img5.png",
    "assets/Image/img6.png",
    "assets/Image/img7.png",
    "assets/Image/img8.png",
    "assets/Image/images9.png",
    "assets/Image/img10.png",
    "assets/Image/img11.png",
    "assets/Image/img12.png",
    "assets/Image/img13.png",
    "assets/Image/img14.png",
    "assets/Image/img15.png",
    "assets/Image/img16.png",
    "assets/Image/img17.png",
    "assets/Image/img18(1).png",
    "assets/Image/img20.png",
    "assets/Image/pic1.png",
    "assets/Image/pic2.png",
    "assets/Image/pic3.png",
    "assets/Image/pic5.png",
    "assets/Image/pic6.png",
    "assets/Image/pic7.png",
    "assets/Image/pic8.png",
    "assets/Image/pic9.png",
    "assets/Image/pic10.png",



  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: const EdgeInsets.only(top: 20,left: 20,bottom: 10,right: 20),
              child: TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                   fillColor: Colors.white,
                    filled: true,
                    prefixIcon: Icon(Icons.search_outlined,color: Colors.black,),
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.white,fontSize: 15),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(child: post(img[0])),
                SizedBox(height: 5,),
                Expanded(child: post(img[1])),
                SizedBox(height: 5,),
                Expanded(child: post(img[2])),
              ],
            ),
            Row(
              children: [
                Expanded(child: post(img[3])),
                SizedBox(height: 5,),
                Expanded(child: post(img[4])),
                SizedBox(height: 5,),
                Expanded(child: post(img[5])),
              ],
            ),
            Row(
              children: [
                Expanded(child: post(img[6])),
                SizedBox(height: 5,),
                Expanded(child: post(img[7])),
                SizedBox(height: 5,),
                Expanded(child: post(img[8])),
              ],
            ),
            Row(
              children: [
                Expanded(child: post(img[9])),
                SizedBox(height: 5,),
                Expanded(child: post(img[10])),
                SizedBox(height: 5,),
                Expanded(child: post(img[11])),
              ],
            ),
            Row(
              children: [
                Expanded(child: post(img[12])),
                SizedBox(height: 5,),
                Expanded(child: post(img[13])),
                SizedBox(height: 5,),
                Expanded(child: post(img[14])),
              ],
            ),
            Row(
              children: [
                Expanded(child: post(img[15])),
                SizedBox(height: 5,),
                Expanded(child: post(img[16])),
                SizedBox(height: 5,),
                Expanded(child: post(img[2])),
              ],
            ),
            Row(
              children: [
                Expanded(child: post(img[18])),
                Expanded(child: post(img[8])),
                Expanded(child: post(img[19])),

              ],
            ),
            Row(
              children: [
                Expanded(child: post(img[20])),
                Expanded(child: post(img[21])),
                Expanded(child: post(img[22])),
              ],
            ),
            Row(
              children: [
                Expanded(child: post(img[23])),
                Expanded(child: post(img[24])),

              ],
            ),
            Row(
              children: [
                Expanded(child: post(img[25])),
                Expanded(child: post(img[26])),
                Expanded(child: post(img[27])),
              ],
            ),
            Row(
              children: [
                Expanded(child: post(img[4])),
                Expanded(child: post(img[8])),
                Expanded(child: post(img[12])),
              ],
            ), Row(
              children: [
                Expanded(child: post(img[21])),
                Expanded(child: post(img[5])),
                Expanded(child: post(img[9])),
              ],
            ), Row(
              children: [
                Expanded(child: post(img[4])),
                Expanded(child: post(img[16])),
                Expanded(child: post(img[25])),
              ],
            ), Row(
              children: [
                Expanded(child: post(img[13])),
                Expanded(child: post(img[18])),
                Expanded(child: post(img[26])),
              ],
            ), Row(
              children: [
                Expanded(child: post(img[5])),
                Expanded(child: post(img[18])),
                Expanded(child: post(img[11])),
              ],
            ), Row(
              children: [
                Expanded(child: post(img[16])),
                Expanded(child: post(img[19])),
                Expanded(child: post(img[20])),
              ],
            ), Row(
              children: [
                Expanded(child: post(img[22])),
                Expanded(child: post(img[27])),
                Expanded(child: post(img[17])),
              ],
            ), Row(
              children: [
                Expanded(child: post(img[2])),
                Expanded(child: post(img[3])),
                Expanded(child: post(img[10])),
              ],
            ), Row(
              children: [
                Expanded(child: post(img[18])),
                Expanded(child: post(img[20])),
                Expanded(child: post(img[21])),
              ],
            ), Row(
              children: [
                Expanded(child: post(img[23])),
                Expanded(child: post(img[4])),
                Expanded(child: post(img[25])),
              ],
            ), Row(
              children: [
                Expanded(child: post(img[0])),
                Expanded(child: post(img[9])),
                Expanded(child: post(img[12])),
              ],
            ), Row(
              children: [
                Expanded(child: post(img[23])),
                Expanded(child: post(img[6])),
                Expanded(child: post(img[15])),
              ],
            ), Row(
              children: [
                Expanded(child: post(img[15])),
                Expanded(child: post(img[21])),
                Expanded(child: post(img[27])),
              ],
            ),



          ],
        ),
      ),
          backgroundColor: Colors.black,


    );
  }
  Widget post(String img){
    return Container(
      height: 150,
      width: 100,
      color: Colors.white,
      child: Image.asset(img,fit: BoxFit.fill,)
    );
  }
}
