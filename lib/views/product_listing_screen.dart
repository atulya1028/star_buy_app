import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class ProductListingScreen extends StatefulWidget {
  const ProductListingScreen({Key? key}) : super(key: key);

  @override
  State<ProductListingScreen> createState() => _ProductListingScreenState();
}

class _ProductListingScreenState extends State<ProductListingScreen> {

  int toggleIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff3a01e4),
        centerTitle: true,
        title: Text("Product Listing",style: TextStyle(fontSize: 16,color: Colors.white),),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search,color: Colors.white,))
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10,),
                  Center(
                    child: SizedBox(
                      child: ToggleSwitch(
                        minWidth: 140,
                        fontSize: 12,
                        cornerRadius: 0,
                        initialLabelIndex: toggleIndex ==0 ? 0 : toggleIndex == 1 ? 1 :2,
                        totalSwitches: 3,
                        labels: ['NEW','COMING SOON','EXCLUSIVE'],
                        onToggle: (index) {
                          setState(() {
                          });
                          toggleIndex = index!;
                        },
                        activeBgColor:  [Color(0xff3a01e4)],
                        inactiveBgColor: Colors.white,
                        borderColor: [Color(0xff3a01e4)],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            ),
            SizedBox(height: 20,),
            toggleIndex == 0 ? Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              margin: EdgeInsets.symmetric(horizontal: 10),
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Metronaut Mid-Top || ... ",
                            style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                          SizedBox(height: 10,),
                          Text("Size: 7, Black"),
                          SizedBox(height: 10,),
                          Text("Seller: Kraasa")
                        ],
                      ),
                      Image.asset("images/shoes.png",width: 80,)
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Text("₹1299",style: TextStyle(
                          fontSize: 17,
                          decoration: TextDecoration.lineThrough,fontWeight: FontWeight.bold),),
                      SizedBox(width: 8,),
                      Text("₹399",style: TextStyle(
                          fontSize: 17,
                          color: Color(0xff767676),fontWeight: FontWeight.bold),),
                      SizedBox(width: 8,),
                      Text("54% Off",style: TextStyle(
                          fontSize: 17,
                          color: Color(0xff007900),fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Text("Delivery by Fri Sep 2",style: TextStyle(
                          fontSize: 17,fontWeight: FontWeight.bold),),
                      SizedBox(width: 8,),
                      Text("|",style: TextStyle(
                          fontSize: 17,
                          color: Color(0xff767676),fontWeight: FontWeight.bold),),
                      SizedBox(width: 8,),
                      Text("Free",style: TextStyle(
                          fontSize: 17,
                          color: Color(0xff007900),fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange
                          ),
                          onPressed: () {}, child: Text("Add To Cart".toUpperCase())),
                      SizedBox(width: 20,),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                              side: BorderSide(color: Colors.orange)
                            )
                          ),
                          onPressed: () {}, child: Text("Add To Cart".toUpperCase(),
                        style: TextStyle(color: Colors.orange),)),
                    ],
                  ),
                  SizedBox(height: 20,)
                ],
              ),
            ) : toggleIndex == 1 ?
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              margin: EdgeInsets.symmetric(horizontal: 10),
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Metronaut Mid-Top || ... ",
                            style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                          SizedBox(height: 10,),
                          Text("Size: 7, Black"),
                          SizedBox(height: 10,),
                          Text("Seller: Kraasa")
                        ],
                      ),
                      Image.asset("images/shoes.png",width: 80,)
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Text("₹1299",style: TextStyle(
                          fontSize: 17,
                          decoration: TextDecoration.lineThrough,fontWeight: FontWeight.bold),),
                      SizedBox(width: 8,),
                      Text("₹399",style: TextStyle(
                          fontSize: 17,
                          color: Color(0xff767676),fontWeight: FontWeight.bold),),
                      SizedBox(width: 8,),
                      Text("54% Off",style: TextStyle(
                          fontSize: 17,
                          color: Color(0xff007900),fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Text("Delivery by Fri Sep 2",style: TextStyle(
                          fontSize: 17,fontWeight: FontWeight.bold),),
                      SizedBox(width: 8,),
                      Text("|",style: TextStyle(
                          fontSize: 17,
                          color: Color(0xff767676),fontWeight: FontWeight.bold),),
                      SizedBox(width: 8,),
                      Text("Free",style: TextStyle(
                          fontSize: 17,
                          color: Color(0xff007900),fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.orange
                          ),
                          onPressed: () {}, child: Text("Add To Cart".toUpperCase())),
                      SizedBox(width: 20,),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  side: BorderSide(color: Colors.orange)
                              )
                          ),
                          onPressed: () {}, child: Text("Add To Cart".toUpperCase(),
                        style: TextStyle(color: Colors.orange),)),
                    ],
                  ),
                  SizedBox(height: 20,)
                ],
              ),
            ) :
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              margin: EdgeInsets.symmetric(horizontal: 10),
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Metronaut Mid-Top || ... ",
                            style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                          SizedBox(height: 10,),
                          Text("Size: 7, Black"),
                          SizedBox(height: 10,),
                          Text("Seller: Kraasa")
                        ],
                      ),
                      Image.asset("images/shoes.png",width: 80,)
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Text("₹1299",style: TextStyle(
                          fontSize: 17,
                          decoration: TextDecoration.lineThrough,fontWeight: FontWeight.bold),),
                      SizedBox(width: 8,),
                      Text("₹399",style: TextStyle(
                          fontSize: 17,
                          color: Color(0xff767676),fontWeight: FontWeight.bold),),
                      SizedBox(width: 8,),
                      Text("54% Off",style: TextStyle(
                          fontSize: 17,
                          color: Color(0xff007900),fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Text("Delivery by Fri Sep 2",style: TextStyle(
                          fontSize: 17,fontWeight: FontWeight.bold),),
                      SizedBox(width: 8,),
                      Text("|",style: TextStyle(
                          fontSize: 17,
                          color: Color(0xff767676),fontWeight: FontWeight.bold),),
                      SizedBox(width: 8,),
                      Text("Free",style: TextStyle(
                          fontSize: 17,
                          color: Color(0xff007900),fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.orange
                          ),
                          onPressed: () {}, child: Text("Add To Cart".toUpperCase())),
                      SizedBox(width: 20,),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  side: BorderSide(color: Colors.orange)
                              )
                          ),
                          onPressed: () {}, child: Text("Add To Cart".toUpperCase(),
                        style: TextStyle(color: Colors.orange),)),
                    ],
                  ),
                  SizedBox(height: 20,)
                ],
              ),
            ),
         SizedBox(height: 20,),
            Expanded(child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.white,
            ))
          ],
        ),
      ),
    );
  }
}
