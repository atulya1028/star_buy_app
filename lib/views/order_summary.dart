import 'package:ecommerce_app/views/payment_screen.dart';
import 'package:flutter/material.dart';

class OrderSummary extends StatefulWidget {
  const OrderSummary({Key? key}) : super(key: key);

  @override
  State<OrderSummary> createState() => _OrderSummaryState();
}

class _OrderSummaryState extends State<OrderSummary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff521afe),
        title: Text("Order Summary"),
      ),
      body: Container(
        color: Color(0xfff1f2f4),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            SizedBox(height: 20,),
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 18),
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15,),
                Text("Singh",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Text("374 William S Canning Blvd, Fall River MA 2721. 121 Worcester Rd, Framingham"),
                  SizedBox(height: 10,),
                  Text("32145611"),
                  SizedBox(height: 30,),
                  Center(child: SizedBox(
                    height: 40,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff521afe)
                        ),
                        onPressed: () {},
                        child: Text("Change or Add Address".toUpperCase())),
                  )),
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
            SizedBox(height: 20,),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: Colors.white,
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 180,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("₹1299",style: TextStyle(fontSize: 20),),
                          TextButton(onPressed: () {}, child: Text("View price details"))
                        ],
                      ),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentScreen()));
                        }, child: Text("Continue".toUpperCase()))
                  ],
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}
