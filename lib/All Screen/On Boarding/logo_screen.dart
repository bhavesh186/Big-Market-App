import 'package:big_market/Common/app_image.dart';
import 'package:big_market/Common/globle_color.dart';
import 'package:flutter/material.dart';

class LogoScreen extends StatelessWidget {
  const LogoScreen({super.key});

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
