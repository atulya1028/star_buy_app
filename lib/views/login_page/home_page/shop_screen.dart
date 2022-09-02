import 'package:ecommerce_app/views/location_screen.dart';
import 'package:ecommerce_app/views/mobile_screen.dart';
import 'package:flutter/material.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff521afe),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Start Shopping"),
            Row(
              children: [
                Text("Jaipur",style: TextStyle(fontSize: 14),),
                SizedBox(width: 5,),
                InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LocationScreen()));
                    },
                    child: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 20,))
              ],
            )
          ],
        ),
        actions: [
          SizedBox(width: 10,),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications_outlined)),
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              color: Color(0xff3a01e4),
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: [
                      InkWell(
                          onTap: () {

                          },
                          child: Text("Essentials",style: TextStyle(color: Colors.white,fontSize: 17),)),
                      SizedBox(width: 10,),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: VerticalDivider(
                          thickness: 1,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 10,),
                      InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => MobileScreen()));
                          },
                          child: Text("Mobile",style: TextStyle(color: Colors.white,fontSize: 17),)),
                      SizedBox(width: 10,),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: VerticalDivider(
                          thickness: 1,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Text("Fashion",style: TextStyle(color: Colors.white,fontSize: 17),),
                      SizedBox(width: 10,),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: VerticalDivider(
                          thickness: 1,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Text("Electronics",style: TextStyle(color: Colors.white,fontSize: 17),),
                      SizedBox(width: 10,),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: VerticalDivider(
                          thickness: 1,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Text("Home Appliances",style: TextStyle(color: Colors.white,fontSize: 17),)
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 280,
             decoration: BoxDecoration(
               image: DecorationImage(
                 image: AssetImage("images/shop1.png")
               )
             ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Popular Items",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                 TextButton(onPressed: () {}, child: Text("View More",style: TextStyle(fontSize: 14),))
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
              ),
              width: MediaQuery.of(context).size.width,
              height: 220,
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 5),
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 10,),
                  //Furniture
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        width: 150,
                          color: Color(0xfff8f6ea),
                          child: Text("Furniture TOP 100\n Deals",textAlign: TextAlign.center,)),
                      Container(
                        width: 150,
                        height: 120,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/furniture.png"),
                            fit: BoxFit.fill
                          ),
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
                        ),
                        ),
                      SizedBox(height: 5,),
                      Text("Up to 70% Off",style: TextStyle(fontSize: 16),),
                      Text("Beds, Sofas & More",style: TextStyle(fontSize: 16),),
                    ],
                  ),
                  SizedBox(width: 10,),
                  //Beds
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          width: 150,
                          color: Color(0xfff8f6ea),
                          child: Text("Beds\n ",textAlign: TextAlign.center,)),
                      Container(
                        width: 150,
                        height: 120,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/beds.png"),
                                fit: BoxFit.fill
                            ),
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text("From ₹7,299",style: TextStyle(fontSize: 16),),
                      Text("King, Queen & More",style: TextStyle(fontSize: 16),),
                    ],
                  ),
                  SizedBox(width: 10,),
                  //Mattress
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          width: 150,
                          color: Color(0xfff8f6ea),
                          child: Text("Mattress\n ",textAlign: TextAlign.center,)),
                      Container(
                        width: 150,
                        height: 120,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/mattress.png"),
                                fit: BoxFit.fill
                            ),
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text("From ₹3,299",style: TextStyle(fontSize: 16),),
                      Text("King, Queen & More",style: TextStyle(fontSize: 16),),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
