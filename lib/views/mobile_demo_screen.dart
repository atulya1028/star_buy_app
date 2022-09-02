import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/views/detail_screen.dart';
import 'package:flutter/material.dart';

class DemoScreen extends StatefulWidget {
  const DemoScreen({Key? key}) : super(key: key);

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  @override
  Widget build(BuildContext context) {

    final List<String> imageList = [
      "images/iphone_demo1.png",
      "images/iphone_demo2.png",
      "images/iphone_demo3.png",
    ];

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: () {
                  Navigator.pop(context);
                }, icon: Icon(Icons.arrow_back,color: Colors.white,)),
                Column(
                  children: [
                    Text("Recent Launch",style: TextStyle(color: Colors.white,fontSize: 12),),
                    Text("iPHONE SE (2020)",style: TextStyle(color: Colors.white,fontSize: 22),)
                  ],
                ),
                Text(""),
                Text(""),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)
                        )
                      ),
                      onPressed: () {}, child: Text("BUY NOW")),
                ),
                SizedBox(width: 10,),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0xff616161),
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Text("\$399",style: TextStyle(color: Colors.white),),
                ),
                SizedBox(width: 10,),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Text("8.1/10",style: TextStyle(color: Colors.white),),
                ),
              ],
            ),
           Expanded(
             child: Container(
               height: MediaQuery.of(context).size.height,
               decoration: BoxDecoration(
                 image: DecorationImage(
                   image: AssetImage("images/iphone_background_img2.png"),
                   fit: BoxFit.contain
                 )
               ),
               width: MediaQuery.of(context).size.width,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   SizedBox(height: 30,),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20),
                     child: Text("Select Color",style: TextStyle(color: Colors.white,fontSize: 20),),
                   ),
                   SizedBox(height: 10,),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Icon(Icons.check,color: Colors.orange,),
                         Text("Black",style: TextStyle(color: Colors.white,fontSize: 16),),
                         Text("White",style: TextStyle(color: Colors.white,fontSize: 16),),
                         Text("Grey",style: TextStyle(color: Colors.white,fontSize: 16),),
                       ],
                     ),
                   ),
                   SizedBox(height: 40,),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20),
                     child: Text("Select Storage",style: TextStyle(color: Colors.white,fontSize: 20),),
                   ),
                   SizedBox(height: 10,),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Icon(Icons.check,color: Colors.orange,),
                         Text("64GB",style: TextStyle(color: Colors.white,fontSize: 16),),
                         Text("128GB",style: TextStyle(color: Colors.white,fontSize: 16),),
                         Text("256GB",style: TextStyle(color: Colors.white,fontSize: 16),),
                       ],
                     ),
                   ),
                   SizedBox(height: 60,),
                   CarouselSlider(
                       items: imageList.map((item) {
                         return InkWell(
                           onTap: () {
                             Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen()));
                           },
                           child: Container(
                             width: 300,
                             height: 400,
                             child: Image.asset(item,fit: BoxFit.fill,),
                           ),
                         );
                       }).toList(),
                       options: CarouselOptions(
                         height: 380,
                         viewportFraction: 0.6,
                         enlargeCenterPage: true
                       )
                   )
                 ],
               ),
             ),
           )
          ],
        ),
      ),
    );
  }
}
