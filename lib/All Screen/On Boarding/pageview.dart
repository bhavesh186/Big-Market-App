
import 'package:big_market/Common/app_image.dart';
import 'package:big_market/Common/app_text.dart';
import 'package:big_market/Common/globle_color.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../Common/commonpageview.dart';

class PageViewScreen extends StatefulWidget {
  PageViewScreen({super.key});

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  final controller = PageController();
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Container(
            height: 700,
            child: PageView(
              controller: controller,
              onPageChanged: (index) {
                setState(() => isLastPage = index == 2);
              },
              children: [
                PageViewWidget(
                  text: AppText.text1,
                  headtext: AppText.Headtext1,
                  img: AppImage.Online_Grocery,
                ),
                PageViewWidget(
                  text: AppText.text2,
                  headtext: AppText.Headtext2,
                  img: AppImage.paymentimg,
                ),
                PageViewWidget(
                  text: AppText.text3,
                  headtext: AppText.Headtext3,
                  img: AppImage.takeaway,
                ),

              ],
            ),
          ),
          SmoothPageIndicator(
            controller: controller,
            count:  3,
            axisDirection: Axis.horizontal,
            effect:  ExpandingDotsEffect(
                spacing:  4.0,
                radius:  4.0,
                dotWidth:  9.0,
                dotHeight:  10.0,
               // paintStyle:  PaintingStyle.stroke,
                strokeWidth:  2,
                dotColor:  Colors.grey,
                activeDotColor:  Colors.indigo
            ),
          )
        ],
      ),
      bottomSheet: Container(
        height: 80,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  controller.jumpToPage(2);
                },
                child: Text('Skip', style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),),
              ),
              ElevatedButton(onPressed: (){
                controller.nextPage(
                    duration: Duration(microseconds: 500),
                    curve: Curves.easeInOut);
              }, child: Text("Next", style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18,
                color: Colors.white,
              ),),style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(AppColor.primarycolor),
              )),

            ],
          ),
        ),
      ),


    );
  }
}