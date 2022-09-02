import 'package:ecommerce_app/controller/login_controller.dart';
import 'package:ecommerce_app/views/otp_field_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool isVisible = false;

  var controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        centerTitle: true,
        title: Text("LOGIN",style: TextStyle(color: Colors.black,fontSize: 16),),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                height: 40,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff3b5998),
                      shadowColor: Color(0xff3b5998)
                    ),
                    onPressed: () {}, child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Image.asset("images/facebook_logo.png",width: 20,color: Colors.white,),

                    SizedBox(width: 15,),
                    Text("Connect With Facebook".toUpperCase(),style: TextStyle(fontSize: 16),)
                  ],
                )),
              ),
            ),
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                height: 40,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                      shadowColor: Color(0xff9c9c9c)
                    ),
                    onPressed: () {}, child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Image.asset("images/google_logo.png",width:20),

                    SizedBox(width: 15,),
                    Text("Connect With Google",style: TextStyle(color: Colors.black,fontSize: 16),)
                  ],
                )),
              ),
            ),
            SizedBox(height: 45,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Don't have account?",style: TextStyle(color: Color(0xffd3d3d3),fontSize: 15),),
                TextButton(onPressed: () {}, child: Text("Sign Up",
                  style: TextStyle(fontSize: 15,color: Color(0xff0068fc)),),)
              ],
            ),
            SizedBox(height: 35,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                controller: controller.emailController,
                decoration: InputDecoration(
                  hintText: "Enter your mobile number or email",
                  hintStyle: TextStyle(color: Color(0xffd3d3d3)),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffd3d3d3))
                  ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffd3d3d3))
                    )
                ),
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                controller: controller.passwordController,
                obscureText: isVisible,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    focusColor: Color(0xff8c8c8c),
                    color: Color(0xff8c8c8c),
                    onPressed: () {
                    setState(() {
                      isVisible =!isVisible;
                    });
                  },icon: isVisible ? Icon(Icons.visibility) : Icon(Icons.visibility_off),),
                    hintText: "Password (Min 8 character)",
                    hintStyle: TextStyle(color: Color(0xffd3d3d3)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffd3d3d3))
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffd3d3d3))
                    )
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("Forget Password",style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff74b0fd,),),)
                ],
              ),
            ),
            Spacer(),
            Center(
              child: Text("By logging in, you agree to the",style: TextStyle(

              ),),
            ),
            SizedBox(height: 5,),
            Center(
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        style: TextStyle(
                          color: Color(0xff0571fc)
                        ),
                        text: "Terms & conditions",
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                          print("Terms & conditions");
                      },
                    ),
                    TextSpan(text: " &",),
                    TextSpan(
                      style: TextStyle(
                          color: Color(0xff0571fc)
                      ),
                      text: " Privacy Policy",
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print("Privacy Policy");
                        },
                    ),
                    TextSpan(text: " of"),
                    TextSpan(text: " Flipkart"),
                  ]
                )
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 40,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xfffe641a),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0)
                      )
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => OTPFieldScreen()));
                    }, child: Text("Login In".toUpperCase(),
                  style: TextStyle(color: Colors.white),)),
              ),
            ),
            SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }
}
