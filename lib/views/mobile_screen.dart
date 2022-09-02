import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/views/mobile_demo_screen.dart';
import 'package:flutter/material.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({Key? key}) : super(key: key);

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  @override
  Widget build(BuildContext context) {

    final List<String> imageList = [
      "images/iphone_img.png",
      "images/iphone_img2.png",
      "images/samsung.png",
    ];

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.black
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40,),
            IconButton(onPressed: () {
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back),color: Colors.grey,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                   decoration: BoxDecoration(
                     color: Color(0xff616161),
                     borderRadius: BorderRadius.circular(15)
                   ),
                    child: Icon(Icons.filter_alt_outlined,color: Colors.white,size: 25,),
                  ),
                  SizedBox(width: 5,),
                  Flexible(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: Color(0xff616161),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)
                          ),
                          hintText: "Search Mobile",
                          hintStyle: TextStyle(color: Color(0xffb6b6b6)),
                          suffixIcon: Icon(Icons.search,color: Colors.white,size: 25,)
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 40,),
            Center(child: Text("Recent Launch",style: TextStyle(
                color: Colors.white,
                fontSize: 12),)),
            Center(child: Text("iPHONE SE (2020)",style: TextStyle(
                color: Colors.white,
                fontSize: 20),)),
            SizedBox(height: 8,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Flexible(
                    child: Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xffacacac),
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Text("15th April 2020"),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color(0xffacacac),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("₹399"),
                    alignment: Alignment.center,
                  ),
                  SizedBox(width: 10,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color(0xfffe641a),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("8.1/10"),
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/iphone_background_img.png"),
                fit: BoxFit.contain
              ),
            ),
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                SizedBox(height: 40,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text("4.70-inch touchscreen display with a resolution of 750\n"
                      " pixels by 1334 pixels at a PPI of 326 pixels per inch.",
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.white
                    ),
                  ),
                ),
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            shape: RoundedRectangleBorder(
                                side: BorderSide(color: Colors.orange)
                            )
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => DemoScreen()));
                        },
                        child: Text("VIEW DEMO")),
                    SizedBox(width: 20,),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            shape: RoundedRectangleBorder(
                            )
                        ),
                        onPressed: () {},
                        child: Text("BUY NOW")),
                  ],
                ),
                SizedBox(height: 20,),
                CarouselSlider(
                    items: imageList.map((item) => Container(
                      color: Colors.transparent,
                      width: 300,
                      height: 300,
                      child: Image.asset(item,fit: BoxFit.fill,),
                    )).toList(),
                    options: CarouselOptions(

                      viewportFraction: 0.6,
                    enlargeCenterPage: true,
                      height: 300
                    ))
              ],
            ),
          )
          ],
        ),
      ),
    );
  }
}
