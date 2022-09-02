import 'package:ecommerce_app/views/bottom_navigation_home_screen.dart';
import 'package:ecommerce_app/views/order_summary.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff521afe),
        title: Text("My Cart",style: TextStyle(color: Colors.white,fontSize: 16),),
        actions: [
          IconButton(onPressed: (){
          Navigator.pushAndRemoveUntil(context,
              MaterialPageRoute(builder: (context) => BottomNavigationHomeScreen()), (route) => false);
          }, icon: Icon(Icons.close))
        ],
      ),
      body: Container(
        color: Color(0xfff1f2f4),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20,),
                          Text("Deliver to Singh, 302016",style: TextStyle(fontSize: 16),),
                          Text("374 William S Canning Blvd, Fall River ...",style: TextStyle(fontSize: 12),),
                        ],
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                              side: BorderSide(color: Color(0xff2900a4))
                            )
                          ),
                          onPressed: () {}, child: Text("Change",style: TextStyle(color: Color(0xff2900a4)),))
                    ],
                  ),
                  SizedBox(height: 20,)
                ],
              ),
            ),

            SizedBox(height: 25,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20,),
                          Text("Realme 5i (Forest Green, 128 GB)",style: TextStyle(fontSize: 16),),
                          SizedBox(height: 10,),
                          Text("4 GB RAM",style: TextStyle(fontSize: 12),),
                          SizedBox(height: 40,),
                          Text("Out Of Stock",style: TextStyle(fontSize: 17,color: Color(0xffff4141)),),
                          SizedBox(height: 10,),
                        ],
                      ),
                    Container(
                      width: 84,
                      height: 100,
                      child: Image.asset("images/phone.png",fit: BoxFit.fill,),
                    )
                    ],
                  ),
                  SizedBox(height: 15,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffacacac))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.archive,color: Color(0xffababab),),
                            SizedBox(width: 15,),
                            Text("Save for later")
                          ],
                        ),
                        VerticalDivider(
                          color: Color(0xffababab),
                          thickness: 1,
                          width: 1,
                        ),
                        Row(
                          children: [
                            Icon(Icons.delete,color: Color(0xffababab),),
                            SizedBox(width: 15,),
                            Text("Remove")
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,)
                ],
              ),
            ),

            SizedBox(height: 25,),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => OrderSummary()));
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Metronaut Mid - Top || ...",style: TextStyle(fontSize: 16),),
                            SizedBox(height: 10,),
                            Text("Size: 6, Black"),
                          ],
                        ),
                        Container(
                          width: 84,
                          height: 100,
                          child: Image.asset("images/shoes.png"),
                        )
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 12,vertical: 5),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Color(0xff007700),
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Row(
                            children: [
                              Text("3.9",style: TextStyle(color: Colors.white),),
                              SizedBox(width: 5,),
                              Icon(Icons.star,color: Colors.white,size: 18,),
                            ],
                          ),
                        ),
                        SizedBox(width: 10,),
                        Text("(2,210)",style: TextStyle(fontSize: 15),),
                        SizedBox(width: 10,),
                        Container(
                          width: 100,
                          height: 40,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/flp.png"),
                            fit: BoxFit.contain
                          )
                        ),
                        )
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Text("₹1299",style: TextStyle(
                            color: Color(0xff7e7e7e),
                            fontSize: 17,decoration: TextDecoration.lineThrough),),

                        SizedBox(width: 10,),

                        Text("₹399",style: TextStyle(
                          color: Colors.black,
                            fontSize: 17,),),

                        SizedBox(width: 10,),
                        Text("54%Off",style: TextStyle(
                            color: Color(0xff007700),
                            fontSize: 17,),),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Delivery by Fri Sep 2",style: TextStyle(color: Colors.black,
                          fontSize: 17
                          ),),
                          SizedBox(width: 5,),
                          VerticalDivider(
                            width: 1,
                            thickness: 1,
                            color: Colors.black,
                          ),
                          SizedBox(width: 10,),
                          Text("Free",style: TextStyle(fontSize: 17,color: Color(0xff007700)),),
                          SizedBox(width: 10,),
                          Text("₹40",style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              fontSize: 17,color: Color(0xff7e7e7e)),),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
