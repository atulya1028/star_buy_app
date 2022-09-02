import 'package:flutter/material.dart';

class AccountsAndSettingsScreen extends StatefulWidget {
  const AccountsAndSettingsScreen({Key? key}) : super(key: key);

  @override
  State<AccountsAndSettingsScreen> createState() => _AccountsAndSettingsScreenState();
}

class _AccountsAndSettingsScreenState extends State<AccountsAndSettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff3a01e4),
        centerTitle: true,
        title: Text("Account & Settings",style: TextStyle(fontSize: 16,color: Colors.white),),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color(0xffedf0f4),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10,),
                  Text("My Location",style: TextStyle(fontSize: 16),),
                  SizedBox(height: 5,),
                  Text("Jaipur",style: TextStyle(fontSize: 13,color: Color(0xff6a6a6a)),),
                  SizedBox(height: 10,)
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10,),
                          Text("M-Ticket",style: TextStyle(fontSize: 16),),
                          SizedBox(height: 5,),
                          Text("Get the ticket on your mobile no print out needed",style: TextStyle(fontSize: 13,color: Color(0xff6a6a6a)),),
                          SizedBox(height: 10,)
                        ],
                      ),
                      Radio(value: 1, groupValue: "M-Ticket", onChanged: (value){
                        setState(() {

                        });
                        print("Value: ---- "+value.toString());
                      })
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10,),
                            Text("Box Office Pickup",style: TextStyle(fontSize: 16),),
                            SizedBox(height: 5,),
                            Text("Show your booking ID & collect the ticket from the box office",style: TextStyle(fontSize: 13,color: Color(0xff6a6a6a)),),
                            SizedBox(height: 10,)
                          ],
                        ),
                      ),
                      Radio(value: 1, groupValue: "M-Ticket", onChanged: (value){
                        setState(() {

                        });
                        print("Value: ---- "+value.toString());
                      })
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10,),
                          Text("Food & Beverages",style: TextStyle(fontSize: 16),),
                          SizedBox(height: 5,),
                          Text("You will see Food & Beverages while booking",style: TextStyle(fontSize: 13,color: Color(0xff6a6a6a)),),
                          SizedBox(height: 10,)
                        ],
                      ),
                      Switch(value: false, onChanged: (value) {
                        setState(() {

                        });
                      })
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10,),
                            Text("Mobile Notifications",style: TextStyle(fontSize: 16),),
                            SizedBox(height: 5,),
                            Text("Get notified on what's new and existing around you",style: TextStyle(fontSize: 13,color: Color(0xff6a6a6a)),),
                            SizedBox(height: 10,),
                            Text("App language",style: TextStyle(fontSize: 14),),
                            SizedBox(height: 20,)
                          ],
                        ),
                      ),
                      Radio(value: 1, groupValue: "M-Ticket", onChanged: (value){
                        setState(() {

                        });
                        print("Value: ---- "+value.toString());
                      })
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Share"),
                SizedBox(width: 20,),
                Text("|"),
                SizedBox(width: 20,),
                Text("Rate Us"),
                SizedBox(width: 20,),
                Text("|"),
                SizedBox(width: 20,),
                Text("booksmile"),
                SizedBox(width: 20,),
                Text("|")
              ],
            )
          ],
        ),
      ),
    );
  }
}
