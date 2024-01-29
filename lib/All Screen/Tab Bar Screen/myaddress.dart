import 'package:flutter/material.dart';

import '../../Common/globle_color.dart';

class MyAddress extends StatelessWidget {
  const MyAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
        body: Column(
          children: [
            Row(
              children: [
                Text('My Address'),
                InkWell(onTap: (){},
                  child: Container(

                    height: 30,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColor.primarycolor,
                    ),

                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.add_circle_sharp, color: Colors.white,),
                          SizedBox(width: 10,),
                          Text('Add New', style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),),
                        ],
                      ),
                    ),
                    // ),
                  ),
                ),
              ],
            ),
          ],
        ),
    );
  }
}
