import 'package:big_market/Common/globle_color.dart';
import 'package:flutter/material.dart';

class PageTwenty extends StatelessWidget {
  const PageTwenty({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Icon(Icons.check_outlined, size: 60, color: Colors.white,),
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: AppColor.primarycolor,
                shape: BoxShape.circle,
              ),
            ),

            SizedBox(height: 20,),

            Text('Your Order Is recived', style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),),
            Text('Delivery Soon',  style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),),

            SizedBox(height: 20,),

            InkWell(onTap: (){},
              child: Container(

                height: 50,
               width: 230,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: AppColor.primarycolor,
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('All Departments', style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),),
                  ],
                ),
                // ),
              ),
            ),

          ],
        ),
      ),

    );
  }
}
