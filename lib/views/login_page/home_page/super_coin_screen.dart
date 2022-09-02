import 'package:ecommerce_app/views/bottom_navigation_home_screen.dart';
import 'package:flutter/material.dart';

class SuperCoinScreen extends StatefulWidget {
  const SuperCoinScreen({Key? key}) : super(key: key);

  @override
  State<SuperCoinScreen> createState() => _SuperCoinScreenState();
}

class _SuperCoinScreenState extends State<SuperCoinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: MediaQuery.of(context).size.width,
                color: Color(0xff521afe),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 40,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Super Coin",style: TextStyle(color: Colors.white,fontSize: 18),),
                        IconButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavigationHomeScreen()));
                        }, icon: Icon(Icons.close,color: Colors.white,))
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          child: Image.asset("images/super_coin2.png",fit: BoxFit.fill,),
                        ),
                        SizedBox(width: 20,),
                        Text("0",style: TextStyle(fontSize: 17,color: Colors.white),),
                        SizedBox(width: 3,),
                        IconButton(onPressed: () {},
                            icon: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 15,))
                      ],
                    ),
                    SizedBox(height: 20,),

                    Row(
                      children: [
                        Flexible(
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset("images/coin_bag.png",width: 30,),
                                SizedBox(width: 10,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Earn",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                                    Text("More coins",style: TextStyle(fontSize: 10),)
                                  ],
                                ),
                                Icon(Icons.arrow_forward_ios,color: Colors.black,size: 15,)
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Flexible(
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            alignment: Alignment.center,
                            child: Row(
                              children: [
                                Image.asset("images/rewards2.png",width: 30,height: 30,fit: BoxFit.cover,),
                                SizedBox(width: 10,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Rewards",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                                    Text("Spend coins",style: TextStyle(fontSize: 10),)
                                  ],
                                ),
                                Icon(Icons.arrow_forward_ios,color: Colors.black,size: 15,)
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 20,)
                  ],
                ),
              ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text("What's New",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(height: 5,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 180,
                    child: ListView(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          width: 280,
                          height: 250,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(
                                  image: AssetImage("images/click_n_win.png"),
                                  fit: BoxFit.fill
                              )
                          ),
                        ),
                        SizedBox(width: 5,),
                        Container(
                          width: 280,
                          height: 250,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(
                                  image: AssetImage("images/biggest_sale.png"),
                                  fit: BoxFit.fill
                              )
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text("Recharge & Bill Payments",
                      style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: ListView(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      scrollDirection: Axis.horizontal,
                      children: [
                        //Mobile
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Color(0xfff4f4f4),
                              child: CircleAvatar(
                                radius: 28,
                                child: Image.asset("images/mobile.png",width: 50,),
                                backgroundColor: Colors.white,
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text("Mobile")
                          ],
                        ),
                        SizedBox(width: 20,),
                        //DTH
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Color(0xfff4f4f4),
                              radius: 30,
                              child: CircleAvatar(
                                radius: 28,
                                backgroundColor: Colors.white,
                                child: Image.asset("images/dth.png",width: 50,
                                  height: 74,),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text("DTH")
                          ],
                        ),
                        SizedBox(width: 20,),
                        //Electricity
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Color(0xfff4f4f4),
                              child: CircleAvatar(
                                radius: 28,
                                backgroundColor: Colors.white,
                                child: Image.asset("images/electricity.png",width: 50,
                                  height: 74,),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text("Electricity")
                          ],
                        ),
                        SizedBox(width: 20,),
                        //Broadband
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Color(0xfff4f4f4),
                              child: CircleAvatar(
                                radius: 28,
                                backgroundColor: Colors.white,
                                child: Image.asset("images/broadband.png",width: 50,
                                  height: 74,),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text("Broadband")
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    decoration: BoxDecoration(
                      // color: Colors.orange,
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                            image: AssetImage("images/sale.png"),
                            fit: BoxFit.fill
                        )
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    decoration: BoxDecoration(
                      // color: Colors.orange,
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                            image: AssetImage("images/online_buy.png"),
                            fit: BoxFit.fill
                        )
                    ),
                  ),
                  SizedBox(height: 20,),
                ],
              ),
            ),
          )
            ],
          ),
        ),
      ),
    );
  }
}
