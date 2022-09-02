import 'package:ecommerce_app/views/bottom_navigation_home_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

class OTPFieldScreen extends StatefulWidget {
  const OTPFieldScreen({Key? key}) : super(key: key);

  @override
  State<OTPFieldScreen> createState() => _OTPFieldScreenState();
}

class _OTPFieldScreenState extends State<OTPFieldScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        centerTitle: true,
        title: Text(
          "Verify Your Phone Number",
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Enter otp",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("We have sent 6 digit code to +91 96876543210"),
            ),
            SizedBox(height: 15,),
            Center(
              child: OTPTextField(
                otpFieldStyle: OtpFieldStyle(
                  enabledBorderColor: Color(0xfffe5402),
                  focusBorderColor: Color(0xfffe5402)
                ),
                length: 6,
                width: MediaQuery.of(context).size.width,
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldStyle: FieldStyle.underline,
                // style: TextStyle(fontSize: 17,color: Colors.orange),
                onChanged: (pin) {
                  print("Changed: " + pin);
                },
                onCompleted: (pin) {
                  print("Completed: " + pin);
                },
              ),
            ),
            Spacer(),
            Center(
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: "Don't receive OTP?"),
                    TextSpan(text: " Resend",
                      style: TextStyle(
                          color: Color(0xff0571fc)
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                      print("Resend");
                        }
                    ),
                  ]
                )
              ),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 40,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xfffe5402),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0)
                        )
                      ),
                      onPressed: () {
                      Navigator.pushAndRemoveUntil(context,
                          MaterialPageRoute(builder: (context) =>
                              BottomNavigationHomeScreen()), (route) => false);
                      }, child: Text("Confirm".toUpperCase()))),
            ),
            SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }
}
