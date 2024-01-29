import 'package:big_market/Common/app_text.dart';
import 'package:big_market/Common/globle_color.dart';
import 'package:flutter/material.dart';

class PageNintin extends StatelessWidget {
  const PageNintin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('Assets/Images/Group 85.png', scale: 3,),
                      SizedBox(width: 20,),
                      Text('Bigmarket', style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: AppColor.primarycolor,
                      ),),
                    ],
                  ),
                  Icon(Icons.close),
                ],
              ),


          Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(height:15,),
              TextField(
               // obscureText:,
                decoration: InputDecoration(
                  hintText: 'Search items',
                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Search items',),
                        Container(
                          height: 35,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColor.primarycolor,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.search, color: Colors.white,),
                              SizedBox(width: 6,),
                              Text('Search', style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),),
                              SizedBox(width: 3,),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  contentPadding: EdgeInsets.all(10.0),
                  // hintText: widget.hintText, // pass the hint text parameter here
                  hintStyle: TextStyle(color: Colors.black),
                ),
                style: TextStyle(color: AppColor.primarycolor),
              ),
              SizedBox(height: 30,),
            ],
          ),


          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.location_on_outlined,size: 25,),
                  SizedBox(width: 5,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Delivery in 16 minutes'),
                      Text('H.No. 2834 Street, 784 Sector, Adyar, Chennai'),
                    ],
                  ),
                ],
              ),
              Icon(Icons.keyboard_arrow_down, size: 25, color: Colors.black54,),
            ],
          ),


          SizedBox(height: 30,),
          InkWell(onTap: (){},
            child: Container(

              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: AppColor.primarycolor,
              ),

              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                 // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.widgets_outlined, color: Colors.white,),
                    SizedBox(width: 10,),
                    Text('All Departments', style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),),
                  ],
                ),
              ),
              // ),
            ),
          ),


              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 70,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         Text(AppText.pagenintintext[index], style: TextStyle(
                           fontSize: 18,
                           fontWeight: FontWeight.w400,
                           color: Colors.black87,
                         ),),
                          Icon(Icons.keyboard_arrow_down, size: 25, color: Colors.black54,),
                        ],
                      ),
                    );
                  },
                  itemCount: 6,
                ),
              ),

            ],
          ),
        ),
    );
  }
}
