import 'package:ecommerce_app/views/order_history_screen.dart';
import 'package:flutter/material.dart';

class OrderPlacedScreen extends StatefulWidget {
  const OrderPlacedScreen({Key? key}) : super(key: key);

  @override
  State<OrderPlacedScreen> createState() => _OrderPlacedScreenState();
}

class _OrderPlacedScreenState extends State<OrderPlacedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color(0xfff1f2f4),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Color(0xff521afe),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    SizedBox(height: 40,),
                    Text("Order Placed",style: TextStyle(
                      fontSize: 18,
                      color: Colors.white
                    ),),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        IconButton(onPressed: () {
                          Navigator.pop(context);
                        }, icon: Icon(Icons.arrow_back,color: Colors.white,)),
                        SizedBox(width: 30,),
                        Text("Total Price for 1 Items: \$1299",style: TextStyle(color: Colors.white,fontSize: 16),),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 40,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                primary: Color(0xff521afe)
                              ),
                              onPressed: () {}, child: Text("VIEW DETAILS"))),
                    ),
                    SizedBox(height: 15,)
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15,),
                    Text("Delivery by Wed, Oct 11th",style: TextStyle(
                      fontSize: 17
                    ),),
                    SizedBox(height: 10,),
                    Text("Singh",style: TextStyle(
                        fontSize: 17
                    )),
                    SizedBox(height: 10,),
                    Text("374 William S Canning Blvd, Fall River MA 2721, 121 Worcester Rd, Framingham",
                      style: TextStyle(fontSize: 13),),
                    SizedBox(height: 10,),
                    Text("32145611",style: TextStyle(fontSize: 13),),
                    SizedBox(height: 20,),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 20),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 40,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => OrderHistoryScreen()));
                        },
                        child: Text("Track Your Order".toUpperCase(),style: TextStyle(
                          color: Color(0xff4509fe)
                        ),),
                      ),
                    ),
                    ),
                    SizedBox(height: 20,)
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(height: 15,),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      width: MediaQuery.of(context).size.width,
                      height: 80,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/upcoming_sale.png"),
                          fit: BoxFit.fill
                        )
                      ),
                    ),
                    SizedBox(height: 20,)
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                                SizedBox(width: 50,),
                                Container(
                                  width: 84,
                                  height: 100,
                                  child: Image.asset("images/shoes.png"),
                                )
                              ],
                            ),
                            SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
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
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
