import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'globle_color.dart';

class GlobleButton extends StatelessWidget {
  final VoidCallback onTap;
  final button;
  GlobleButton({super.key, required this.onTap, this.button});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
     onPressed: onTap,

      // height: 50,
      // width: double.infinity,
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(10),
      //   color: AppColor.primarycolor,
      // ),

      // child: ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(AppColor.primarycolor),

      ),

      //
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              button,
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
      // ),
    );

    // return InkWell(onTap: (){},
    //   child: Container(
    //
    //     // onPressed: () {
    //     //
    //     // },
    //
    //     height: 50,
    //     width: double.infinity,
    //     decoration: BoxDecoration(
    //       borderRadius: BorderRadius.circular(10),
    //       color: AppColor.primarycolor,
    //     ),
    //
    //
    //
    //     // child: ElevatedButton(
    //     //   style: ButtonStyle(
    //     //       backgroundColor: MaterialStatePropertyAll(AppColor.primarycolor)),
    //     //
    //       child: Row(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           Text(button, style: TextStyle(
    //             fontSize: 18,
    //             color: Colors.white,
    //             fontWeight: FontWeight.w700,
    //           ),),
    //         ],
    //       ),
    //     // ),
    //   ),
    // );
  }
}
