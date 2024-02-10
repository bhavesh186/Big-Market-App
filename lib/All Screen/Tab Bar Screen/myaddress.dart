import 'package:big_market/Common/app_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Common/globle_color.dart';
import '../tabbarscreen.dart';

class MyAddress extends StatelessWidget {
  const MyAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            SizedBox(height: 15.h,),


            Row(
              children: [

                Text('My Address', style: TextStyle(
                  fontSize: 24,
                  fontFamily: GoogleFonts.inter().toString(),
                  fontWeight: FontWeight.w500,
                ),),

                Spacer(),
                Container(
                  height: 32.h,
                  width: 100.w,
                  child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStatePropertyAll(AppColor.primarycolor)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 16.h,
                          width: 16.w,
                          decoration: BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                          child: Icon(
                            Icons.add,
                            color: AppColor.primarycolor,
                            size: 18,
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                          Text('Add New', style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontFamily: GoogleFonts.inter().toString(),
                            fontSize: 15,
                          ),),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 39.h,
            ),
            AddressContainer(
              image: 'Assets/Images/homepage 1.png',
              text: 'Home',
              text2: 'H.No. 2834 Street, 784 Sector sector',
            ),
            SizedBox(
              height: 14.h,
            ),
            AddressContainer(
              image: 'Assets/Images/address (3) 1.png',
              text: 'Chennai',
              text2: '658475 Street, 784 Sector, Chenn...',
            ),
            SizedBox(
              height: 14.h,
            ),
            AddressContainer(
              image: 'Assets/Images/briefcase (2) 1.png',
              text: 'Office',
              text2: '36547, 784 Sector, Chennai. Ad...',
            ),
            SizedBox(
              height: 14.h,
            ),
          ],
        ),
      ),
    );
  }
}

class AddressContainer extends StatelessWidget {
  const AddressContainer(
      {super.key,
        required this.image,
        required this.text,
        required this.text2});

  final String image, text, text2;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 71.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        border: Border.all(color: AppColor.textfieldcolor),
      ),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                SizedBox(
                  width: 20.w,
                ),
                Image.asset(
                  image,
                  scale: 2.5,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 16.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                      Text(text, style: TextStyle(
                        fontSize: 14,
                        fontFamily: GoogleFonts.inter().toString(),
                        fontWeight: FontWeight.w600,
                      ),),
                    Text(text2, style: TextStyle(
                      fontSize: 10,
                      fontFamily: GoogleFonts.inter().toString(),
                      fontWeight: FontWeight.w300,
                    ),),

                  ],
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppImage.edit,
                scale: 2.5,
              ),
              SizedBox(
                height: 6.h,
              ),
                Text('Edit', style: TextStyle(
                  color: AppColor.headcolor,
                  fontSize: 14,
                  fontFamily: GoogleFonts.inter().toString(),
                  fontWeight: FontWeight.w500,
                ),),
            ],
          ),
          SizedBox(
            width: 27.w,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppImage.delete,
                scale: 2.5,
              ),
              SizedBox(
                height: 6.h,
              ),
              Text('Delete', style: TextStyle(
                color: AppColor.blackcolor,
                fontSize: 14,
                fontFamily: GoogleFonts.inter().toString(),
                fontWeight: FontWeight.w500,
              ),),
            ],
          ),
          SizedBox(
            width: 6.w,
          ),
        ],
      ),
    );
  }
}
