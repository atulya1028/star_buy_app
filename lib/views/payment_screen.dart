import 'package:ecommerce_app/views/order_placed_screen.dart';
import 'package:flutter/material.dart';


class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {

int? radioSelected;
String _radioVal = "";

int? bankSelected;
String _bankVal = "";

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff521afe),
        title: Text("Payments"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color(0xfff1f2f4),
        child: Column(
          children: [
            SizedBox(height: 10,),
            Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      SizedBox(width: 10,),
                      Image.asset("images/bookmark.png",width: 30,),
                      SizedBox(width: 10,),
                      Text("5% off* with Axis Bank Buzz Credit Card")
                    ],
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 40,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white
                          ),
                          onPressed: (){}, child: Text("View All Offers",style: TextStyle(color: Color(0xff541dfe)),)),
                    ),
                  ),
                  SizedBox(height: 15,),

                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  ListTile(
                    leading: Radio(
                        activeColor: Color(0xff3880ff),
                        value: 1, groupValue: radioSelected, onChanged: (value) {
                      setState(() {
                        radioSelected = value as int?;
                        _radioVal = 'State Bank of India Debit Card';
                      });
                      print(_radioVal);
                    }),
                    title: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("State Bank of India Debit Card",style: TextStyle(fontSize: 14),),
                        Divider(
                          color: Colors.grey,
                          thickness: 1,
                        )
                      ],
                    ),
                  ),
                  ListTile(
                    leading: Radio(
                        activeColor: Color(0xff3880ff),
                        value: 2, groupValue: radioSelected, onChanged: (value) {
                      setState(() {
                        radioSelected = value as int?;
                     _radioVal = "Account XXXXXX0101";
                      });
                      print(_radioVal);
                    }),
                    title: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Account XXXXXX0101",style: TextStyle(fontSize: 14),),
                        Divider(
                          color: Colors.grey,
                          thickness: 1,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  SizedBox(height: 15,),
                  ListTile(
                    leading: Radio(value: 1, groupValue: bankSelected, onChanged: (value) {
                    setState(() {
                      bankSelected = value as int?;
                      _bankVal = "UPI (PhonePe / Google Pay / BHIM UPI)";
                    });
                    print(_bankVal);
                    }),
                    title: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("UPI (PhonePe / Google Pay / BHIM UPI)",style: TextStyle(fontSize: 14),),
                        Divider(
                          thickness: 1,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                  ListTile(
                    leading: Radio(value: 2, groupValue: bankSelected, onChanged: (value) {
                    setState(() {
                      bankSelected = value as int?;
                      _bankVal = "Credit / Debit / ATM Card";
                    });
                    print(_bankVal);
                    }),
                    title: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Credit / Debit / ATM Card",style: TextStyle(fontSize: 14),),
                        Divider(
                          thickness: 1,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                  ListTile(
                    leading: Radio(value: 3, groupValue: bankSelected, onChanged: (value) {
                    setState(() {
                      bankSelected = value as int?;
                      _bankVal = "Net Banking";
                    });
                    print(_bankVal);
                    }),
                    title: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Net Banking",style: TextStyle(fontSize: 14),),
                        Divider(
                          thickness: 1,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                  ListTile(
                    leading: Radio(value: 4, groupValue: bankSelected, onChanged: (value) {
                    setState(() {
                      bankSelected = value as int?;
                      _bankVal = "Cash on Delivery";
                    });
                    print(_bankVal);
                    }),
                    title: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Cash on Delivery",style: TextStyle(fontSize: 14),),
                        Divider(
                          thickness: 1,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                  ListTile(
                    leading: Radio(value: 5, groupValue: bankSelected, onChanged: (value) {
                    setState(() {
                      bankSelected = value as int?;
                      _bankVal = "Emi (5 months Installment)";
                    });
                    print(_bankVal);
                    }),
                    title: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Emi (5 months Installment)",style: TextStyle(fontSize: 14),),
                        Divider(
                          thickness: 1,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5,),
            Expanded(
              child: Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("₹1299",style: TextStyle(fontSize: 20),),
                          TextButton(onPressed: () {}, child: Text("View price details",
                            style: TextStyle(color: Color(0xff6b3bfe)),))
                        ],
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => OrderPlacedScreen()));
                          }, child: Text("Continue".toUpperCase()))
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
