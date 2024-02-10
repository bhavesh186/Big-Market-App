import 'package:big_market/Common/app_image.dart';
import 'package:flutter/material.dart';

import '../../Common/app_text.dart';
import '../../Common/common_appbar.dart';
import '../../Common/globle_color.dart';

class PageEleven extends StatelessWidget {
  const PageEleven({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CommonAppBar(
            headtext: 'Delivery in 10 minutes',
            text: '3 items',
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 110,
                  decoration: BoxDecoration(
                      border: Border(
                    bottom: BorderSide(
                      //                   <--- left side
                      color: Colors.black12,
                      width: 0.7,
                    ),
                  )),
                  child: Row(
                    children: [
                      Container(
                        width: 90,

                        child: Image.asset(AppImage.pageelevenimg[index], scale: 3,),

                      ),
                      Expanded(
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    AppText.pageeleventext[index],
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 17,
                                    ),
                                  ),
                                  Text(
                                    AppText.pageelevensubtext[index],
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 17,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.currency_rupee,
                                        size: 20,
                                      ),
                                      Text(
                                        AppText.pageelevenprice[index],
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  TextButton(
                                    onPressed: () {},
                                    child: Container(
                                      child: Icon(
                                        Icons.remove,
                                        size: 18,
                                        color: Colors.black,
                                      ),
                                      height: 25,
                                      width: 25,
                                      decoration: BoxDecoration(
                                        color: Colors.black12,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '1',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20,
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Container(
                                      child: Icon(
                                        Icons.add,
                                        size: 18,
                                        color: Colors.black,
                                      ),
                                      height: 25,
                                      width: 25,
                                      decoration: BoxDecoration(
                                        color: Colors.black12,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              itemCount: 5,
              // separatorBuilder: (BuildContext context, int index) =>
              //     const Divider(
              //   height: 30,
              // ),
            ),
          ),


          InkWell(onTap: (){},
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(

                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColor.primarycolor,
                ),

                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text('3 items', style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                          ),),

                          SizedBox(width: 6,),

                          Icon(Icons.circle, size: 10, color: Colors.white,),
                          SizedBox(width: 5,),
                          Icon(Icons.currency_rupee, size: 22, color: Colors.white,),
                          SizedBox(width: 5,),
                          Text('750', style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                          ),),
                        ],
                      ),

                      Row(
                        children: [
                          Text('Proceed to Pay', style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                          ),),
                          SizedBox(width: 5,),
                          Icon(Icons.keyboard_double_arrow_right, color: Colors.white, size: 25,),
                        ],
                      ),
                    ],
                  ),
                ),
                // ),
              ),
            ),
          ),


        ],
      ),
    );
  }
}


// - image-removebg-preview (84) 2.png
// - image-removebg-preview (85) 2.png
// - image-removebg-preview (86) 2.png
// - image-removebg-preview (87) 2.png
// - image-removebg-preview (91) 2.png
