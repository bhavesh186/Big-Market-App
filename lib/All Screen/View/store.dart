import 'package:big_market/Common/app_image.dart';
import 'package:big_market/Common/app_text.dart';
import 'package:flutter/material.dart';

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
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding:
                      const EdgeInsets.only(bottom: 20, left: 20, right: 20),
                  child: Container(
                    height: 190,
                    decoration: BoxDecoration(
                      border: Border.symmetric(
                        horizontal: BorderSide(color: Colors.black38),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 100,
                          // child: Image.asset(
                          //   AppImage.pagetenimg[index],
                          //   scale: 2,
                          // ),
                        ),
                        Expanded(
                          child: Container(
                            child: Column(
                              children: [


                                Text(
                                  AppText.tenhedingtext[index],
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
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

                                Text(AppText.tensubhadingtext[index], style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                ),),
                                Text('Pickup available', style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 17,
                                ),),
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
