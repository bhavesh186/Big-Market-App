import 'package:big_market/Common/globle_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CsCommonTextFieldWidget extends StatefulWidget {
  const CsCommonTextFieldWidget(
     {
      // this.titleText = '',
       // this.titleTextAlign = TextAlign.center,
       required this.text,
        required this.isPassword,
       // required this.hintText,
       // required this.textController,
});

 // final String titleText;
 // final TextAlign titleTextAlign;
  final String text;
  final bool isPassword;
 // final String hintText;
 // final TextEditingController textController;

  @override
  _CsCommonTextFieldWidgetState createState() =>
      _CsCommonTextFieldWidgetState();
}

class _CsCommonTextFieldWidgetState extends State<CsCommonTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.text, style: TextStyle(
          fontSize: 18, fontWeight: FontWeight.w700,
        ),),
        SizedBox(height: 5,),
        TextField(

          obscureText: widget.isPassword,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            contentPadding: EdgeInsets.all(10.0),
           // hintText: widget.hintText, // pass the hint text parameter here
            hintStyle: TextStyle(color: AppColor.primarycolor),
          ),
          style: TextStyle(color: AppColor.primarycolor),
        ),
      ],
    );
  }
}