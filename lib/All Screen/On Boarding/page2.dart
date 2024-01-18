import 'package:big_market/Common/app_image.dart';
import 'package:big_market/Common/globle_color.dart';
import 'package:big_market/Common/globle_text.dart';
import 'package:flutter/material.dart';

import '../../Common/text_field.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 100,),
              Text('Select from Our \n     Best Menu', style: TextStyle(color: AppColor.primarycolor, fontSize: 27, fontWeight: FontWeight.w500),),
              SizedBox(height: 15,),
              Text('Pick your food from our menu \n         More than 35 items.', style: TextStyle(fontSize: 18,),),
              // Image(image: AssetImage(AppImage.Online_Grocery),),
              Image.asset(AppImage.Online_Grocery),




              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Text('Skip'),
              //     Container(
              //       height: 50,
              //       width: 100,
              //       decoration: BoxDecoration(color: AppColor.primarycolor, borderRadius: BorderRadius.circular(10),),
              //       child: TextButton(onPressed: (){}, child: Text('Next', style: TextStyle(
              //         fontSize: 17, color: Colors.white,
              //       ),),),
              //     ),
              //   ],
              // ),

              // Container(
              //   width: double.infinity,
              //   margin: const EdgeInsets.all(10),
              //   child: CsCommonTextFieldWidget(
              //     isPassword: false,
              //     hintText: 'Dabhi',
              //     textController: TextEditingController(text: 'Bhavesh'),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
