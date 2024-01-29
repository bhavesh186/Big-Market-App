import 'package:big_market/Common/globle_color.dart';
import 'package:flutter/material.dart';

import '../../Common/app_image.dart';
import '../../Common/app_text.dart';
import '../../Common/common_appbar.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CommonAppBar(headtext: 'Shop',),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.zero,
              itemCount: 4,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 0,
                  mainAxisExtent: 280,
                  crossAxisCount: 2,
                  crossAxisSpacing: 0),
              itemBuilder: (BuildContext context, index) {
                return Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        SizedBox(height: 8,),
                        Image.asset(
                          AppImage.pagenineimg[index],
                          scale: 3,
                          height: 125,
                        ),

                        SizedBox(height: 8,),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppText.pageninetext[index],
                            ),
                            Text(
                              AppText.pagenineproduct[index],
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              AppText.pagenineproweight[index],
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.currency_rupee,
                                      size: 20,
                                    ),
                                    Text(
                                      AppText.pagenineproprice[index],
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    TextButton(
                                      onPressed: () {},
                                      child: Container(
                                        height: 35,
                                        width: 60,
                                        child: Center(child: Text('ADD', style: TextStyle(color: AppColor.primarycolor),),),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: AppColor.primarycolor),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    // borderRadius: BorderRadius.circular(10),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
