import 'package:flutter/material.dart';
import 'globle_color.dart';

class PageViewWidget extends StatefulWidget {
  final headtext;
  final text;
  final img;
  PageViewWidget({super.key, this.text, this.img, this.headtext});

  @override
  State<PageViewWidget> createState() => _PageViewWidgetState();
}

class _PageViewWidgetState extends State<PageViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
     mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Text(
            widget.headtext,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: AppColor.primarycolor,
                fontSize: 27,
                fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 70),
          child: Text(
            widget.text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        // Image(image: AssetImage(AppImage.Online_Grocery),),
        Image.asset(widget.img),


      ],
    );
  }
}
