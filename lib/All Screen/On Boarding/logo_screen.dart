
import 'package:big_market/Common/app_image.dart';
import 'package:big_market/Common/globle_color.dart';
import 'package:flutter/material.dart';

import '../Auth Screen/signinscreen.dart';

class LogoScreen extends StatefulWidget {
  const LogoScreen({super.key});

  @override
  State<LogoScreen> createState() => _LogoScreenState();
}
class _LogoScreenState extends State<LogoScreen> {
  void initState(){
    Future.delayed( Duration(seconds: 3),(){
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_)=> SignInScreen()), (route) => false);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: AppColor.primarycolor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(100),
          child: Container(

            child: Image(image: AssetImage(AppImage.Logo),
            ),
          ),
        ),
      ),
    );
  }
}
