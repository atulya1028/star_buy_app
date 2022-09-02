import 'package:ecommerce_app/views/accounts_and_settings_screen.dart';
import 'package:ecommerce_app/views/offer_screen.dart';
import 'package:ecommerce_app/views/product_listing_screen.dart';
import 'package:ecommerce_app/views/support_screen.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff521afe),
        title: Text("Hey!",style: TextStyle(fontSize: 20),),
        actions: [
          Icon(Icons.account_circle_outlined,color: Colors.white,size: 30,),
          SizedBox(width: 10,)
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset("images/gift.png",width: 60,),
                        SizedBox(width: 10,),
                        Flexible(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Unlock special Offers & great benefits",style: TextStyle(fontSize: 12),)
                            ],
                          ),
                        ),
                        SizedBox(width: 10,),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(color: Color(0xff005bfc))
                              )
                            ),
                            onPressed: () {}, child: Text("Login / Register".toUpperCase(),
                          style: TextStyle(color: Color(0xff005bfc)),))
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              //Purchase
              ListTile(
                leading: Image.asset("images/purchase.png",width: 30,),
                title: Text("Purchase History"),
                subtitle: Text("View your booking & Purchase"),
              ),
              SizedBox(height: 10,),
              Divider(
                thickness: 1,
              ),
              SizedBox(height: 10,),

              //Purchase
              ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ProductListingScreen()));
                },
                leading: Image.asset("images/product_list.png",width: 30,),
                title: Text("Product Listing"),
                // subtitle: Text("View your booking & Purchase"),
              ),
              SizedBox(height: 10,),
              Divider(
                thickness: 1,
              ),
              SizedBox(height: 10,),

              //Rewards
              ListTile(
                leading: Image.asset("images/rewards2.png",width: 30,),
                title: Text("Rewards"),
                subtitle: Text("View your rewards & Unlock new ones"),
              ),
              SizedBox(height: 10,),
              Divider(
                thickness: 1,
              ),
              SizedBox(height: 10,),

              //Offers
              ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => OfferScreen()));
                },
                leading: Image.asset("images/offers.png",width: 30,),
                title: Text("Offers"),
              ),
              SizedBox(height: 10,),
              Divider(
                thickness: 1,
              ),
              SizedBox(height: 10,),
              //Gift
              ListTile(
                leading: Image.asset("images/gift.png",width: 30,),
                title: Text("Gift"),
              ),
              SizedBox(height: 10,),
              Divider(
                thickness: 1,
              ),
              SizedBox(height: 10,),
              //Account
              ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AccountsAndSettingsScreen()));
                },
                leading: Image.asset("images/accounts.png",width: 30,),
                title: Text("Account & Settings"),
                subtitle: Text("Location, Payments, Address & More"),
              ),
              SizedBox(height: 10,),
              Divider(
                thickness: 1,
              ),
              SizedBox(height: 10,),
              //Help
              ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SupportScreen()));
                },
                leading: Image.asset("images/help.png",width: 30,),
                title: Text("Help & Support"),

              ),
            /*  SizedBox(height: 10,),
              Divider(
                thickness: 1,
              ),
              SizedBox(height: 10,),*/
            ],
          ),
        ),
      ),
    );
  }
}
