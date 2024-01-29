import 'package:big_market/Common/app_image.dart';
import 'package:flutter/material.dart';

import '../../Common/app_text.dart';
import '../../Common/common_appbar.dart';

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
                  height: 120,
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
                        width: 110,

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
