import 'package:ecommerce_app/views/login_page/login_screen.dart';
import 'package:flutter/material.dart';

class LanguageSettings extends StatefulWidget {
  const LanguageSettings({Key? key}) : super(key: key);

  @override
  State<LanguageSettings> createState() => _LanguageSettingsState();
}

class _LanguageSettingsState extends State<LanguageSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
       child: Column(
         children: [
           Container(
             width: MediaQuery.of(context).size.width,
             color: Color(0xff521afe),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 SizedBox(height: 50,),
                 Row(
                   children: [
                     SizedBox(width: 20,),
                     Text("Shopcart".toUpperCase(),style: TextStyle(fontSize: 15,color: Colors.white),),
                     SizedBox(width: 10,),
                     Image.asset("images/shopping_cart.png",width: 30,color: Color(0xffff6516),)
                   ],
                 ),
                Column(
                  children: [
                    SizedBox(height: 80,),
                    Row(
                      children: [
                        SizedBox(width: 20,),
                        Text("Welcome",style: TextStyle(fontSize: 18,color: Colors.white),)
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        SizedBox(width: 20,),
                        Text("Now you can use Flipkart in multiple languages",
                          style: TextStyle(fontSize: 14,color: Colors.white),)
                      ],
                    ),
                  ],
                ),
                 SizedBox(height: 50,),
               ],
             ),
           ),
           Expanded(
             child: Container(
               width: MediaQuery.of(context).size.width,
               height: MediaQuery.of(context).size.height,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   SizedBox(height: 40,),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20),
                     child: Text("Choose Language",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                   ),
                   SizedBox(height: 25,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       //English
                       Container(
                         width: 150,
                         height: 150,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(5),
                           border: Border.all(width: 1,color: Color(0xffdbdbdb)),
                         ),
                         child: Column(
                           children: [
                             SizedBox(height: 10,),
                             CircleAvatar(
                               backgroundColor: Color(0xffffa919),
                               radius: 45,
                               child: Text("En",style: TextStyle(fontSize: 26,color: Colors.white),),
                             ),
                             SizedBox(height: 15,),
                             Text("English",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
                           ],
                         ),
                       ),
                       //Hindi
                       Container(
                         width: 150,
                         height: 150,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(5),
                           border: Border.all(width: 1,color: Color(0xffdbdbdb)),
                         ),
                         child: Column(
                           children: [
                             SizedBox(height: 10,),
                             CircleAvatar(
                               backgroundColor: Color(0xff299a3d),
                               radius: 45,
                               child: Text("ह",style: TextStyle(fontSize: 26,color: Colors.white),),
                             ),
                             SizedBox(height: 15,),
                             Text("Hindi",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                           ],
                         ),
                       ),
                     ],
                   ),
                   Spacer(),
                   Padding(
                     padding: EdgeInsets.symmetric(horizontal: 20),
                     child: SizedBox(
                       width: MediaQuery.of(context).size.width,
                       height: 40,
                       child: ElevatedButton(
                           style: ElevatedButton.styleFrom(
                             primary: Color(0xfffe641a),

                             shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(5)
                             )
                           ),
                           onPressed: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                       }, child: Text("Continue to English".toUpperCase())),
                     ),
                   ),
                   SizedBox(height: 10,)
                 ],
               ),
             ),
           )
         ],
       ),
      ),
    );
  }
}
