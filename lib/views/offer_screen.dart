import 'package:flutter/material.dart';

class OfferScreen extends StatefulWidget {
  const OfferScreen({Key? key}) : super(key: key);

  @override
  State<OfferScreen> createState() => _OfferScreenState();
}

class _OfferScreenState extends State<OfferScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff3a01e4),
        centerTitle: true,
        title: Text("Offer Listing",style: TextStyle(fontSize: 16,color: Colors.white),),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              color: Color(0xffafafaf),
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Flexible(
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 40,
                            child: TextField(
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(color: Colors.white,width: 0)
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(color: Colors.white,width: 0)
                                ),
                                fillColor: Colors.white,
                                filled: true,
                                prefixIcon: Icon(Icons.search,color: Color(0xffcccccc),),
                                hintText: "Enter Input",
                                hintStyle: TextStyle(color: Color(0xffcccccc),fontSize: 15),
                                contentPadding: EdgeInsets.symmetric(vertical: 10)
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          height: 40,
                          child: Row(
                            children: [
                             Image.asset("images/filter.png",width: 20,color: Color(0xffaaaaaa),),
                              SizedBox(width: 5,),
                              Text("Filter",style: TextStyle(fontSize: 17,color: Color(0xffaaaaaa)),)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,)
                ],
              ),
            ),
            //iPhone
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                             Container(
                               width: 80,
                               height: 100,
                               child: Image.asset("images/iphone_offer.png",fit: BoxFit.fill,),
                             ),
                              SizedBox(width: 5,),
                              Flexible(
                                child: Column(
                                  children: [
                                    Text("SBI signature/Elite credit card offer",
                                      style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                    SizedBox(height: 10,),
                                    Text("This offer is valid for SBI Signature / Elite card customers get 2",
                                      style: TextStyle(fontSize: 12,color: Color(0xffdadada),fontWeight: FontWeight.bold),),
                                    SizedBox(height: 40,),
                                    Text("Valid till: 31-mar-2023 23:59",
                                      style: TextStyle(fontSize: 14,color: Color(0xff707070)),),
                                    SizedBox(height: 20,)
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                  )),
            ),
            //Happy Birthday
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 80,
                                height: 100,
                                child: Image.asset("images/happy_birthday_offer.png",fit: BoxFit.fill,),
                              ),
                              SizedBox(width: 5,),
                              Flexible(
                                child: Column(
                                  children: [
                                    Text("SBI signature/Elite credit card offer",
                                      style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                    SizedBox(height: 10,),
                                    Text("This offer is valid for SBI Signature / Elite card customers get 2",
                                      style: TextStyle(fontSize: 12,color: Color(0xffdadada),fontWeight: FontWeight.bold),),
                                    SizedBox(height: 40,),
                                    Text("Valid till: 31-mar-2023 23:59",
                                      style: TextStyle(fontSize: 14,color: Color(0xff707070)),),
                                    SizedBox(height: 20,)
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),

                      ],
                    ),
                  )),
            ),
            //Home Appliances
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 80,
                                height: 100,
                                child: Image.asset("images/home_appliances_offer.png",fit: BoxFit.fill,),
                              ),
                              SizedBox(width: 5,),
                              Flexible(
                                child: Column(
                                  children: [
                                    Text("SBI signature/Elite credit card offer",
                                      style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                    SizedBox(height: 10,),
                                    Text("This offer is valid for SBI Signature / Elite card customers get 2",
                                      style: TextStyle(fontSize: 12,color: Color(0xffdadada),fontWeight: FontWeight.bold),),
                                    SizedBox(height: 40,),
                                    Text("Valid till: 31-mar-2023 23:59",
                                      style: TextStyle(fontSize: 14,color: Color(0xff707070)),),
                                    SizedBox(height: 20,)
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),

                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
