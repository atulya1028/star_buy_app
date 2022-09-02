import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/views/login_page/home_page/cart_screen.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
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
            IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back,color: Colors.white,)),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/iphone_info.png"),
                    fit: BoxFit.contain
                  ),
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      //Highlights

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text("Highlights",style: TextStyle(color: Colors.white,fontSize: 20),),
                      ),
                      SizedBox(height: 20,),
                      Padding(padding: EdgeInsets.only(left: 40),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Colors.white,
                                ),
                                SizedBox(width: 5,),
                                Text("64 GB ROM",style: TextStyle(color: Colors.white,fontSize: 12),)
                              ],
                            ),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Colors.white,
                                ),
                                SizedBox(width: 5,),
                                Text("11.94 cm (4.7 inch) Retina HD Display",
                                  style: TextStyle(color: Colors.white,fontSize: 12),)
                              ],
                            ),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Colors.white,
                                ),
                                SizedBox(width: 5,),
                                Text("12MP Rear Camera | 7MP Front Camera",
                                  style: TextStyle(color: Colors.white,fontSize: 12),)
                              ],
                            ),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Colors.white,
                                ),
                                SizedBox(width: 5,),
                                Text("A13 Bionic Chip with 3rd Gen Neural Engine Processor",
                                  style: TextStyle(color: Colors.white,fontSize: 12),),
                                SizedBox(width: 5,),SizedBox(width: 5,),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Colors.white,
                                ),
                                SizedBox(width: 5,),
                                Flexible(
                                  child: Text("Water and Dust Resistant (1 meter for Upto 30 minutes, IP67)",
                                    style: TextStyle(color: Colors.white,fontSize: 12),),
                                ),
                                SizedBox(width: 5,),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Colors.white,
                                ),
                                SizedBox(width: 5,),
                                Flexible(
                                  child: Text("Fast Charge Capable",
                                    style: TextStyle(color: Colors.white,fontSize: 12),),
                                ),
                                SizedBox(width: 5,),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Colors.white,
                                ),
                                SizedBox(width: 5,),
                                Flexible(
                                  child: Text("Wireless charging (Works with Qi Charges | Qi Charges are Sold seperately",
                                    style: TextStyle(color: Colors.white,fontSize: 12),),
                                ),
                                SizedBox(width: 5,),
                              ],
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 20,),

                      //Available offers

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text("Available offers",style: TextStyle(color: Colors.white,fontSize: 20),),
                      ),
                      SizedBox(height: 20,),
                      Padding(padding: EdgeInsets.only(left: 40),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Colors.white,
                                ),
                                SizedBox(width: 5,),
                                Flexible(
                                  child: Text("Bank Offer 10% Instant Savings on CITI Credit and Debit Cards",
                                    style: TextStyle(color: Colors.white,fontSize: 12),),
                                )
                              ],
                            ),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Colors.white,
                                ),
                                SizedBox(width: 5,),
                                Flexible(
                                  child: Text("Bank Offer 10% Instant Discount on ICICI BAnk Credit Cards",
                                    style: TextStyle(color: Colors.white,fontSize: 12),),
                                )
                              ],
                            ),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Colors.white,
                                ),
                                SizedBox(width: 5,),
                                Flexible(
                                  child: Text("Bank Offer Additional ₹500 Off on Citi and Debit Cards",
                                    style: TextStyle(color: Colors.white,fontSize: 12),),
                                )
                              ],
                            ),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Colors.white,
                                ),
                                SizedBox(width: 5,),
                                Flexible(
                                  child: Text("Bank Offer Additional ₹500 Off on ICICI Bank Credit Cards",
                                    style: TextStyle(color: Colors.white,fontSize: 12),),
                                ),
                                SizedBox(width: 5,),SizedBox(width: 5,),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Colors.white,
                                ),
                                SizedBox(width: 5,),
                                Flexible(
                                  child: Text("Water and Dust Resistant (1 meter for Upto 30 minutes, IP67)",
                                    style: TextStyle(color: Colors.white,fontSize: 12),),
                                ),
                                SizedBox(width: 5,),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Colors.white,
                                ),
                                SizedBox(width: 5,),
                                Flexible(
                                  child: Text("Fast Charge Capable",
                                    style: TextStyle(color: Colors.white,fontSize: 12),),
                                ),
                                SizedBox(width: 5,),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Colors.white,
                                ),
                                SizedBox(width: 5,),
                                Flexible(
                                  child: Text("Wireless charging (Works with Qi Charges | Qi Charges are Sold seperately",
                                    style: TextStyle(color: Colors.white,fontSize: 12),),
                                ),
                                SizedBox(width: 15,),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15,),
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
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => CartScreen()));
                              }, child: Text("Add to cart".toUpperCase())),
                          SizedBox(width: 20,),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.orange,
                                shape: RoundedRectangleBorder(
                                  // side: BorderSide(color: Colors.orange)
                                )
                              ),
                              onPressed: () {}, child: Text("Buy Now".toUpperCase())),
                        ],
                      ),
                      SizedBox(height: 15,),
                      CarouselSlider(
                          items: imageList.map((item) {
                            return InkWell(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => DetailScreen()));
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
