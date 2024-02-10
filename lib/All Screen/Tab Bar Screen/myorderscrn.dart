import 'package:big_market/Common/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Common/globle_color.dart';

class MyOrderScreen extends StatefulWidget {
  const MyOrderScreen({super.key});

  @override
  State<MyOrderScreen> createState() => _MyOrderScreenState();
}


class Order {
  String image;
  String deliverd;
  String number;
  String datentime;
  String price;
  Color color;
  Color? containercolor;

  Order(
      {required this.image,
        required this.deliverd,
        required this.number,
        required this.datentime,
        required this.price,
        required this.color,
        this.containercolor});
}

List<Order> Orderdata = [
  Order(
      image: 'Assets/Images/shopping-bag (1) 1.png',
      deliverd: 'delivered',
      number: "0RD0432547891",
      datentime: 'Placed on wed, 19 Oct 30, 12:55 pm',
      price: '930',
      color: AppColor.headcolor,
      containercolor: AppColor.tabContainerclr),
  Order(
      image: 'Assets/Images/shopping-bag (1) 1.png',
      deliverd: 'delivered',
      number: "0RD0432525486",
      datentime: 'Placed on wed, 22 Oct 27, 01:55 pm',
      price: '580',
      color: AppColor.headcolor,
      containercolor: AppColor.tabContainerclr),
  Order(
    image: 'Assets/Images/shopping-bag (1) 1.png',
    deliverd: 'cancelled',
    number: "0RD0432556247",
    datentime: 'Placed on wed, 22 Oct 27, 01:55 pm',
    price: '1080',
    color: Color(0xff5041FC),
    containercolor: Color(0x42a010a3),
  )
];

class _MyOrderScreenState extends State<MyOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17.0),
        child: Column(
          children: [

            SizedBox(height: 15.h,),

            Row(
              children: [
                  Text(AppText.tabOrdertitletext, style: TextStyle(
                    fontSize: 24,
                    fontFamily: GoogleFonts.inter().toString(),
                    fontWeight: FontWeight.w500,
                  ),),
                
              ],
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: Orderdata.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Container(
                      height: 104.h,
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
                                  Orderdata[index].image,
                                  scale: 3,
                                ),
                                SizedBox(
                                  width: 16.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 17.h,
                                      width: 62.w,
                                      decoration: BoxDecoration(
                                        color: Orderdata[index].containercolor,
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(20),
                                        ),
                                      ),
                                      child: Center(
                                          child: Text(Orderdata[index].deliverd, style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily:
                                            GoogleFonts.inter().toString(),
                                            fontSize: 10,
                                            color: Orderdata[index].color,
                                          ),),

                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Row(
                                      children: [
                                        Text(Orderdata[index].number, style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontFamily: GoogleFonts.inter().toString(),
                                          fontSize: 14,
                                          color: AppColor.blackcolor,
                                        ),),
                                        SizedBox(
                                          width: 3.h,
                                        ),
                                        Container(
                                          height: 4.h,
                                          width: 4.w,
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color(0x9E000000)),
                                        ),
                                        SizedBox(
                                          width: 4.h,
                                        ),
                                        Text('₹${Orderdata[index].price}', style: TextStyle(
                                          fontFamily:
                                          GoogleFonts.inter().toString(),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: const Color(0xba0500ff),
                                        ),)
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                      Text(Orderdata[index].datentime, style: TextStyle(
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
                              Icon(
                                Icons.visibility_outlined,
                                size: 20,
                                color: AppColor.headcolor,
                              ),
                              SizedBox(
                                height: 6.h,
                              ),
                                Text('View Details', style: TextStyle(
                                  color: AppColor.headcolor,
                                  fontSize: 8,
                                  fontFamily: GoogleFonts.inter().toString(),
                                  fontWeight: FontWeight.w500,
                                ),),
                            ],
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
