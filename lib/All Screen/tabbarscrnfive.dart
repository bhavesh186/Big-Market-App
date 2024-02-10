import 'package:flutter/material.dart';

import '../Common/common_appbar.dart';
import '../Common/globle_color.dart';
import 'Tab Bar Screen/logoutscreen.dart';
import 'Tab Bar Screen/myaddress.dart';
import 'Tab Bar Screen/mybalance.dart';
import 'Tab Bar Screen/myorderscrn.dart';

class TabBarScrnFive extends StatefulWidget {
  const TabBarScrnFive({super.key});

  @override
  State<TabBarScrnFive> createState() => _TabBarScrnFiveState();
}

class _TabBarScrnFiveState extends State<TabBarScrnFive>
    with TickerProviderStateMixin {
  int selectindex = 0;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }
  void _onItemTapped(int index) {
    setState(() {
      selectindex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
                            'Assets/Images/wallet (2) 2.png',
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
                          'Wallets',
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
                            'Assets/Images/credit-cards (2) 1.png',
      
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
                          'Cards',
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
                            'Assets/Images/Vector.png',
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
                          'Netbanking',
                          style: TextStyle(
                            fontSize: 9,
                              color: selectindex == 2
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
                            color: selectindex == 3
                                ? AppColor.primarycolor
                                : Colors.black12,
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            'Assets/Images/google-glass-logo (2) 1.png',
                            scale: 1,
                            color: selectindex == 3
                                ? Colors.white
                                : AppColor.primarycolor,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Pay via UPI',
                          style: TextStyle(
                            fontSize: 10,
                              color: selectindex == 3
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
                            color: selectindex == 4
                                ? AppColor.primarycolor
                                : Colors.black12,
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            'Assets/Images/money (2) 1.png',
                           scale: 2.5,
                            color: selectindex == 4
                                ? Colors.white
                                : AppColor.primarycolor,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Cash',
                          style: TextStyle(
                              color: selectindex == 4
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
                
                LogOutScreen(),
                LogOutScreen(),
                LogOutScreen(),
                LogOutScreen(),
                LogOutScreen(),
      
              ],),
            ),
          ],
        ),
      ),
    );
  }
}
