import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GlobleText extends StatelessWidget {
  final String text;
  final String? fontfamily;
  Color? color;
  GlobleText({super.key, required this.fontfamily, this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.w500,
        color: color ?? Colors.red,
        fontFamily: fontfamily ?? 'BungeeSpice',

      ),
    );
  }
}
