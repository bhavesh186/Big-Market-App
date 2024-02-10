import 'package:big_market/Common/globle_color.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Common/common_appbar.dart';
import 'Auth Screen/signinscreen.dart';
import 'Tab Bar Screen/logoutscreen.dart';
import 'Tab Bar Screen/myaddress.dart';
import 'Tab Bar Screen/mybalance.dart';
import 'Tab Bar Screen/myorderscrn.dart';


class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}


class _TabBarScreenState extends State<TabBarScreen>
    with TickerProviderStateMixin {
  int selectindex = 0;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }
  void _onItemTapped(int index) {
    setState(() {
      selectindex = index;
    });
  }

  void logOut() async {
    await FirebaseAuth.instance.signOut();

    Navigator.popUntil(context, (route) => route.isFirst);
    Navigator.pushReplacement(context,
        CupertinoPageRoute(builder: (context) => SignInScreen()));

  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Column(
          children: [
            CommonAppBar(headtext: 'Profile'),

            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                child: TabBar(
                  indicatorColor: AppColor.primarycolor,
                  controller: _tabController,
                  labelColor: AppColor.primarycolor,
                  unselectedLabelColor: Colors.grey,
                  labelStyle: TextStyle(fontSize: 11),
                  tabs: [

                    Column(
                      children: [
                        Container(
                          height: 42,
                          width: 42,
                          decoration: BoxDecoration(
                            color: selectindex == 0
                                ? AppColor.primarycolor
                                : Colors.black12,
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            'Assets/Images/address (3) 1.png',
                            scale: 3,
                            color: selectindex == 0
                                ? Colors.white
                                : AppColor.primarycolor,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Address',
                          style: TextStyle(
                              color: selectindex == 0
                                  ? AppColor.primarycolor
                                  : Colors.black),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 42,
                          width: 42,
                          decoration: BoxDecoration(
                            color: selectindex == 1
                                ? AppColor.primarycolor
                                : Colors.black12,
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            'Assets/Images/menu (10) 2.png',

                            scale: 3,
                            color: selectindex == 1
                                ? Colors.white
                                : AppColor.primarycolor,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'My Order',
                          style: TextStyle(
                              color: selectindex == 1
                                  ? AppColor.primarycolor
                                  : Colors.black),
                        )
                      ],
                    ),

                    Column(
                      children: [
                        Container(
                          height: 42,
                          width: 42,
                          decoration: BoxDecoration(
                            color: selectindex == 2
                                ? AppColor.primarycolor
                                : Colors.black12,
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            'Assets/Images/wallet (2) 2.png',
                            scale: 3,
                            color: selectindex == 2
                                ? Colors.white
                                : AppColor.primarycolor,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'My Wallet',
                          style: TextStyle(
                              color: selectindex == 2
                                  ? AppColor.primarycolor
                                  : Colors.black),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>  SignInScreen()),
                            );
                          },
                          child: Container(
                            height: 42,
                            width: 42,
                            decoration: BoxDecoration(
                              color: selectindex == 3
                                  ? AppColor.primarycolor
                                  : Colors.black12,
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'Assets/Images/logout (4) 1.png',
                              scale: 3,
                              color: selectindex == 3
                                  ? Colors.white
                                  : AppColor.primarycolor,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Logout',
                          style: TextStyle(
                              color: selectindex == 3
                                  ? AppColor.primarycolor
                                  : Colors.black),
                        )
                      ],
                    ),
                  ],
                  onTap: _onItemTapped,
                  mouseCursor: MouseCursor.uncontrolled,
                ),


              ),
            ),

            Expanded(
              child: TabBarView(controller: _tabController, children: [
                MyAddress(),
                MyOrderScreen(),
                MyBalanceScreen(),
               // LogOutScreen(),
              
              ],),
            ),
          ],
        ),
    );


  }
}
