import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Common/app_text.dart';
import '../../Common/globle_color.dart';

class MyBalanceScreen extends StatefulWidget {
  const MyBalanceScreen({super.key});

  @override
  State<MyBalanceScreen> createState() => _MyBalanceScreenState();
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
        required this.price,
        required this.deliverd,
        required this.number,
        required this.datentime,
        required this.color,
        this.containercolor});
}

List<Order> Orderdata = [
  Order(
      image: 'Assets/Images/add 2.png',
      deliverd: 'Cashback',
      price: '500',
      number: "Transaction ID: 50916228",
      datentime: 'On 23 Oct 18, 03:13 PM',
      color: AppColor.headcolor,
      containercolor: AppColor.tabContainerclr

  ),
  Order(
      image: 'Assets/Images/minus 1.png',
      deliverd: 'Purchase',
      price: '300',
      number: "Transaction ID: 50916984",
      datentime: 'On 23 Oct 18, 03:13 PM',
      color: Colors.red,
      //color: Color(0xff5041FC),
      containercolor: AppColor.tabContainerclr),
  Order(
    image: 'Assets/Images/add 2.png',
    deliverd: 'Cashback',
    price: '800',
    number: "Transaction ID: 509165488",
    datentime: 'On 13 Oct 16, 01:43 PM',
    color: AppColor.headcolor,
   // color: Color(0xff5041FC),
    containercolor: Color(0x42a010a3),
  )
];

class _MyBalanceScreenState extends State<MyBalanceScreen> {
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
                  Text(AppText.tabbalancetitel, style: TextStyle(
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
                                  color: Orderdata[index].color,
                                  // color: AppColor.headcolor,
                                ),
                                SizedBox(
                                  width: 16.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      // height: 17.h,
                                      // width: 62.w,
                                      // decoration: BoxDecoration(
                                      //   color: Orderdata[index].containercolor,
                                      //   borderRadius: const BorderRadius.all(
                                      //     Radius.circular(20),
                                      //   ),
                                      // ),
                                      child: Center(
                                         child: Text(Orderdata[index].deliverd, style: TextStyle(
                                           fontWeight: FontWeight.w600,
                                           fontFamily:
                                           GoogleFonts.inter().toString(),
                                           fontSize: 16,
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
                                            fontSize: 14,
                                            fontFamily:
                                            GoogleFonts.inter().toString(),
                                            fontWeight: FontWeight.w600,
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
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),

                                      Text(Orderdata[index].datentime, style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: GoogleFonts.inter().toString(),
                                        fontWeight: FontWeight.w500,
                                      ),),

                                  ],
                                ),
                              ],
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                                Text("₹ ${Orderdata[index].price}", style: TextStyle(
                                  //color: AppColor.headcolor,
                                  fontSize: 18,
                                  fontFamily: GoogleFonts.inter().toString(),
                                  fontWeight: FontWeight.w500,
                                  color: Orderdata[index].color,
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
