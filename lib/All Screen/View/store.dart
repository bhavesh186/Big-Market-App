import 'package:big_market/Common/app_image.dart';
import 'package:big_market/Common/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Common/common_appbar.dart';

class StroePage extends StatelessWidget {
  const StroePage({super.key});

  @override
  Widget build(BuildContext context) {
    // final List<String> entries = <String>['A', 'B', 'C'];
    return Scaffold(
      body: Column(
        children: [
          CommonAppBar(
            text: 'We have 36 vendors now',
            headtext: 'Store',
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(top: 30),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding:
                      const EdgeInsets.only(bottom: 20, left: 15, right: 15),
                  child: Container(
                    height: 180,
                    decoration: BoxDecoration(
                      border: Border.symmetric(
                        horizontal: BorderSide(color: Colors.black12),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                       //  Image.asset(AppImage.storepage[index], scale: 2,),


                        Container(
                          width: 130,

                         child:  Column(
                           mainAxisAlignment: MainAxisAlignment.start,
                           children: [
                             Image.asset(AppImage.storepage[index], scale: 2,),
                           ],
                         ),
                        ),
                        Expanded(
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text(
                                  AppText.tenhedingtext[index],
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 21,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),

                                SizedBox(height: 10.h,),

                                Row(

                                  children: [
                                      Text(AppText.tensubtext1[index]),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 5),
                                        child: Icon(Icons.circle, color: Colors.black26,size: 15,),
                                      ),
                                      Text(AppText.tensubtext2[index]),
                                     // Icon(Icons.circle),
                                     // Text(AppText.tensubtext3[index]),
                                  ],
                                ),

                                SizedBox(height: 10.h,),

                                Text(AppText.tensubhadingtext[index], style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                ),),
                                Text('Pickup available', style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 17,
                                ),),

                                SizedBox(height: 6.h,),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 35.h,
                                      width: 100.w,
                                      child: Center(child: Text('7.5 mi away', style: TextStyle(
                                        color: Colors.black,

                                      ),)),
                                      decoration: BoxDecoration(
                                        color: Color(0xffD9D9D9),
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(color: Colors.black26),
                                      ),
                                    ),


                                    Container(

                                    ),
                                  ],
                                ),
                                
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              itemCount: 3,
              // separatorBuilder: (BuildContext context, int index) =>
              //     const Divider(
              //   height: 30,
              // ),
            ),
          ),
        ],
      ),
    );
  }
}
