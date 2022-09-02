import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class OrderHistoryScreen extends StatefulWidget {
  const OrderHistoryScreen({Key? key}) : super(key: key);

  @override
  State<OrderHistoryScreen> createState() => _OrderHistoryScreenState();
}

class _OrderHistoryScreenState extends State<OrderHistoryScreen> {
  double value = 4.5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff3a01e4),
        centerTitle: true,
        title: Text("Order History",style: TextStyle(fontSize: 16,color: Colors.white),),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color(0xffe0e0e0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Container(
               width: MediaQuery.of(context).size.width,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   SizedBox(height: 20,),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20),
                     child: Text("Mon,24 Mar 2020",style: TextStyle(fontSize: 17,color: Color(0xff6d6d6d)),),
                   ),
                   SizedBox(height: 15,),
                   Container(
                     margin: EdgeInsets.symmetric(horizontal: 20),
                     width: MediaQuery.of(context).size.width,
                     color: Colors.white,
                     child: Column(
                       children: [
                         Container(
                           width: MediaQuery.of(context).size.width,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(5),
                             color: Colors.white,
                           ),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               SizedBox(height: 15,),
                               Padding(
                                 padding: const EdgeInsets.symmetric(horizontal: 5),
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.start,
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Image.asset("images/shoes.png",width: 80,),
                                     Flexible(
                                       child: Container(
                                         width: MediaQuery.of(context).size.width,
                                         child: Column(
                                           mainAxisAlignment: MainAxisAlignment.start,
                                           crossAxisAlignment: CrossAxisAlignment.start,
                                           children: [
                                             Text("₹1299",style: TextStyle(color: Color(0xff7a7a7a)),),
                                             SizedBox(height: 5,),
                                             Text("Metronaut Mid-Top || Outdoor",style: TextStyle(fontSize: 18),),
                                             SizedBox(height: 20,),
                                             Text("Mon, 24 Feb | 09:05 AM",style: TextStyle(fontSize: 17),),
                                             Text("By Cash",style: TextStyle(fontSize: 17,color: Color(0xff7a7a7a)),),
                                             SizedBox(height: 20,),
                                           ],
                                         ),
                                       ),
                                     )
                                   ],
                                 ),
                               ),
                               Row(
                                 children: [
                                   Container(
                                     width: 10,
                                     height: 20,
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.only(topRight: Radius.circular(15),bottomRight: Radius.circular(15)),
                                       color: Color(0xffdddcdc),
                                     ),
                                   ),
                                   Flexible(
                                     child: Container(
                                       width: MediaQuery.of(context).size.width,
                                       height: 2,
                                       color: Color(0xffe1e1e1),
                                     ),
                                   ),
                                   Container(
                                     width: 10,
                                     height: 20,
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.only(topLeft: Radius.circular(30),bottomLeft: Radius.circular(30)),
                                       color: Color(0xffdddcdc),
                                     ),
                                   ),
                                 ],
                               ),
                               SizedBox(height: 20,),
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 children: [
                                   Text("2",style: TextStyle(fontSize: 20),),
                                   Text("SELLER",style: TextStyle(fontSize: 20,color: Color(0xff787878)),),
                                 ],
                               ),
                               SizedBox(height: 10,),
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 children: [
                                   Text("Qty",style: TextStyle(fontSize: 20),),
                                   Text("Kraasa3",style: TextStyle(fontSize: 20),),
                                 ],
                               ),
                               SizedBox(height: 5,),
                               Row(
                                 children: [
                                   Container(
                                     width: 10,
                                     height: 20,
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.only(topRight: Radius.circular(15),bottomRight: Radius.circular(15)),
                                       color: Color(0xffdddcdc),
                                     ),
                                   ),
                                   Flexible(
                                     child: Container(
                                       width: MediaQuery.of(context).size.width,
                                       height: 2,
                                       color: Color(0xffe1e1e1),
                                     ),
                                   ),
                                   Container(
                                     width: 10,
                                     height: 20,
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.only(topLeft: Radius.circular(30),bottomLeft: Radius.circular(30)),
                                       color: Color(0xffdddcdc),
                                     ),
                                   ),
                                 ],
                               ),
                               SizedBox(height: 20,),
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 children: [
                                   RatingStars(
                                     value: value,
                                     onValueChanged: (v) {
                                       setState(() {
                                         value = v;
                                       });
                                     },
                                     starBuilder: (index, color) => Icon(
                                       Icons.star,
                                       color: color,
                                     ),
                                     starCount: 5,
                                     starSize: 20,
                                     // valueLabelColor: const Color(0xff9b9b9b),
                                     /*  valueLabelTextStyle: const TextStyle(
                                   color: Colors.white,
                                   fontWeight: FontWeight.w400,
                                   fontStyle: FontStyle.normal,
                                   fontSize: 12.0),
                               valueLabelRadius: 10,*/
                                     maxValue: 5,
                                     starSpacing: 2,
                                     maxValueVisibility: true,
                                     valueLabelVisibility: false,
                                     animationDuration: Duration(milliseconds: 1000),
                                     valueLabelPadding:
                                     const EdgeInsets.symmetric(vertical: 1, horizontal: 8),
                                     valueLabelMargin: const EdgeInsets.only(right: 8),
                                     starOffColor: const Color(0xffe7e8ea),
                                     starColor: Color(0xfffe641a),
                                   ),
                                   TextButton(onPressed: () {}, child: Text("Write Review".toUpperCase()))
                                 ],
                               )
                             ],
                           ),
                         )
                       ],
                     ),
                   )
                 ],
               ),
             ),
             Container(
               width: MediaQuery.of(context).size.width,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   SizedBox(height: 20,),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20),
                     child: Text("Mon,24 Mar 2020",style: TextStyle(fontSize: 17,color: Color(0xff6d6d6d)),),
                   ),
                   SizedBox(height: 15,),
                   Container(
                     margin: EdgeInsets.symmetric(horizontal: 20),
                     width: MediaQuery.of(context).size.width,
                     color: Colors.white,
                     child: Column(
                       children: [
                         Container(
                           width: MediaQuery.of(context).size.width,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(5),
                             color: Colors.white,
                           ),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               SizedBox(height: 15,),
                               Padding(
                                 padding: const EdgeInsets.symmetric(horizontal: 5),
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.start,
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Image.asset("images/shoes.png",width: 80,),
                                     Flexible(
                                       child: Container(
                                         width: MediaQuery.of(context).size.width,
                                         child: Column(
                                           mainAxisAlignment: MainAxisAlignment.start,
                                           crossAxisAlignment: CrossAxisAlignment.start,
                                           children: [
                                             Text("₹1299",style: TextStyle(color: Color(0xff7a7a7a)),),
                                             SizedBox(height: 5,),
                                             Text("Metronaut Mid-Top || Outdoor",style: TextStyle(fontSize: 18),),
                                             SizedBox(height: 20,),
                                             Text("Mon, 24 Feb | 09:05 AM",style: TextStyle(fontSize: 17),),
                                             Text("By Cash",style: TextStyle(fontSize: 17,color: Color(0xff7a7a7a)),),
                                             SizedBox(height: 20,),
                                           ],
                                         ),
                                       ),
                                     )
                                   ],
                                 ),
                               ),
                               Row(
                                 children: [
                                   Container(
                                     width: 10,
                                     height: 20,
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.only(topRight: Radius.circular(15),bottomRight: Radius.circular(15)),
                                       color: Color(0xffdddcdc),
                                     ),
                                   ),
                                   Flexible(
                                     child: Container(
                                       width: MediaQuery.of(context).size.width,
                                       height: 2,
                                       color: Color(0xffe1e1e1),
                                     ),
                                   ),
                                   Container(
                                     width: 10,
                                     height: 20,
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.only(topLeft: Radius.circular(30),bottomLeft: Radius.circular(30)),
                                       color: Color(0xffdddcdc),
                                     ),
                                   ),
                                 ],
                               ),
                               SizedBox(height: 20,),
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 children: [
                                   Text("2",style: TextStyle(fontSize: 20),),
                                   Text("SELLER",style: TextStyle(fontSize: 20,color: Color(0xff787878)),),
                                 ],
                               ),
                               SizedBox(height: 10,),
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 children: [
                                   Text("Qty",style: TextStyle(fontSize: 20),),
                                   Text("Kraasa3",style: TextStyle(fontSize: 20),),
                                 ],
                               ),
                               SizedBox(height: 5,),
                               Row(
                                 children: [
                                   Container(
                                     width: 10,
                                     height: 20,
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.only(topRight: Radius.circular(15),bottomRight: Radius.circular(15)),
                                       color: Color(0xffdddcdc),
                                     ),
                                   ),
                                   Flexible(
                                     child: Container(
                                       width: MediaQuery.of(context).size.width,
                                       height: 2,
                                       color: Color(0xffe1e1e1),
                                     ),
                                   ),
                                   Container(
                                     width: 20,
                                     height: 30,
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.only(topLeft: Radius.circular(30),bottomLeft: Radius.circular(30)),
                                       color: Color(0xffdddcdc),
                                     ),
                                   ),
                                 ],
                               ),
                               SizedBox(height: 20,),
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 children: [
                                   RatingStars(
                                     value: value,
                                     onValueChanged: (v) {
                                       setState(() {
                                         value = v;
                                       });
                                     },
                                     starBuilder: (index, color) => Icon(
                                       Icons.star,
                                       color: color,
                                     ),
                                     starCount: 5,
                                     starSize: 20,
                                     // valueLabelColor: const Color(0xff9b9b9b),
                                     /*  valueLabelTextStyle: const TextStyle(
                                   color: Colors.white,
                                   fontWeight: FontWeight.w400,
                                   fontStyle: FontStyle.normal,
                                   fontSize: 12.0),
                               valueLabelRadius: 10,*/
                                     maxValue: 5,
                                     starSpacing: 2,
                                     maxValueVisibility: true,
                                     valueLabelVisibility: false,
                                     animationDuration: Duration(milliseconds: 1000),
                                     valueLabelPadding:
                                     const EdgeInsets.symmetric(vertical: 1, horizontal: 8),
                                     valueLabelMargin: const EdgeInsets.only(right: 8),
                                     starOffColor: const Color(0xffe7e8ea),
                                     starColor: Color(0xfffe641a),
                                   ),
                                   TextButton(onPressed: () {}, child: Text("Write Review".toUpperCase()))
                                 ],
                               )
                             ],
                           ),
                         )
                       ],
                     ),
                   )
                 ],
               ),
             ),
              SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}
