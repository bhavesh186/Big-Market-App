import 'package:big_market/Common/globle_color.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

import '../../Common/globle_button.dart';
import '../On Boarding/page2.dart';
import '../View/homepage.dart';
import '../bottomnavigation.dart';

class OtpVerificatin extends StatefulWidget {
  const OtpVerificatin({super.key});

  @override
  State<OtpVerificatin> createState() => _OtpVerificatinState();
}

class _OtpVerificatinState extends State<OtpVerificatin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Text(
            'Verify Code',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            'Please enter the code we just sent to email',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.black54,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'example@gmail.com',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: AppColor.primarycolor,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          OTPTextField(
            length: 5,
            width: MediaQuery.of(context).size.width,
            fieldWidth: 50,
            style: TextStyle(fontSize: 17),
            textFieldAlignment: MainAxisAlignment.spaceAround,
            fieldStyle: FieldStyle.box,
            onCompleted: (pin) {
              print("Completed: " + pin);
            },
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Didn’t receive OTP?',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black54,
            ),
          ),
          Text(
            'Resend Code',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Colors.black,
              decoration: TextDecoration.underline,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          GlobleButton(
            button: 'Verify',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const BottomNavigation()));
            },
          ),
        ],
      ),
    ));
  }
}
