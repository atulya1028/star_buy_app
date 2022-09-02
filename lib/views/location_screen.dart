import 'package:flutter/material.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {

  final citiesList =[

    //1
    Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset("images/mumbai.png" ,width: 50,height: 50,),
        Text("Mumbai",style: TextStyle(color: Colors.black , fontSize: 12),)
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset("images/delhi.png" , width: 50 , height: 50,),
        Text("Delhi-NCR",style: TextStyle(color: Colors.black , fontSize: 12),)
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset("images/banglore.png" , width: 50 , height: 50,),
        Text("Banglore",style: TextStyle(color: Colors.black , fontSize: 12),)
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset("images/hyderabad.png" , width: 50 , height: 50,),
        Text("Hyderabad",style: TextStyle(color: Colors.black , fontSize: 12),)
      ],
    ),

    //2
    Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset("images/ahmedabad.png" , width: 50 , height: 50,),
        Text("Ahmedabad",style: TextStyle(color: Colors.black , fontSize: 12),)
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset("images/chandigarh.png" , width: 50 , height: 50,),
        Text("Chandigarh",style: TextStyle(color: Colors.black , fontSize: 12),)
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset("images/chennai.png" , width: 50 , height: 50,),
        Text("Chennai",style: TextStyle(color: Colors.black , fontSize: 12),)
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset("images/pune.png" , width: 50 , height: 50,),
        Text("Pune",style: TextStyle(color: Colors.black , fontSize: 12),)
      ],
    ),

    //3
    Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset("images/kolkata.png" , width: 50 , height: 50,),
        Text("Kolkata",style: TextStyle(color: Colors.black , fontSize: 12),)
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset("images/kochi.png" , width: 50 , height: 50,),
        Text("Kochi",style: TextStyle(color: Colors.black , fontSize: 12),)
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset("images/lucknow.png" , width: 50 , height: 50,),
        Text("Lucknow",style: TextStyle(color: Colors.black , fontSize: 12),)
      ],
    ),
   /* Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset("images/pune.pune" , width: 50 , height: 50,),
        Text("Pune",style: TextStyle(color: Colors.black , fontSize: 12),)
      ],
    ),*/
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff521afe),
        centerTitle: true,
        title: Text("Jaipur",style: TextStyle(color: Colors.white,fontSize: 16),),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color(0xffafafaf),
        child: Column(
          children: [
            Container(
              color: Color(0xffafafaf),
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SizedBox(
                      height: 40,
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 10),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          prefixIcon: Icon(Icons.search),
                          hintText: "Enter Input",
                          hintStyle: TextStyle(fontSize: 15)
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,)
                ],
              ),
            ),
            Container(
              color: Colors.white,
            width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset("images/send.png",width: 25,color: Color(0xff167afc),),
                        SizedBox(width: 30,),
                        Text("Detect my location",style: TextStyle(color: Color(0xff167afc)),)
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                ],
              ),
            ),
            SizedBox(height: 5,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              color: Color(0xffedf0f4),
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  Text("Popular Cities",style: TextStyle(fontSize: 18,color: Color(0xff878889)),),
                  SizedBox(height: 20,)
                ],
              ),
            ),
            SizedBox(height: 5,),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: GridView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 2),
                  itemCount: citiesList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    childAspectRatio: 0.9
                  ), itemBuilder: (BuildContext context, int index) {
                    return Card(
                      color: Colors.white,
                      child: citiesList[index],
                    );
                },
                ),
              ),
            ),
            SizedBox(height: 5,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: MediaQuery.of(context).size.width,
              height: 100,
              color: Color(0xffedf0f4),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10,),
                  Text("Other Cities",style: TextStyle(fontSize: 17),),

                ],
              ),
            ),
            SizedBox(height: 5,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text("Ajmer"),
                  SizedBox(height: 5,),
                  Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  SizedBox(height: 10,),
                  Text("Kota"),
                  SizedBox(height: 5,),
                 /* Divider(
                    thickness: 1,
                    color: Colors.grey,
                  )*/
                ],
              ),
            )
       ]
      ),
      ),
    );
  }
}
