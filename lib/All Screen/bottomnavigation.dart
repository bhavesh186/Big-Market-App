import 'package:big_market/All%20Screen/tabbarscreen.dart';
import 'package:big_market/Common/globle_color.dart';
import 'package:flutter/material.dart';

import 'Tab Bar Screen/myaddress.dart';
import 'View/homepage.dart';
import 'View/page11.dart';
import 'View/shop.dart';
import 'View/store.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    ShopScreen(),
    StroePage(),
    PageEleven(),
    TabBarScreen(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),

      ),



      bottomNavigationBar: BottomNavigationBar(

          iconSize: 30,
          elevation: 0,
          unselectedItemColor: Colors.black,

          items: [
            BottomNavigationBarItem(
              icon: Image.asset('Assets/Images/homepage (1) 1.png', scale: 3,color: _selectedIndex==0?AppColor.primarycolor:Colors.black,),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('Assets/Images/shop 1.png', scale: 3,color: _selectedIndex==1?AppColor.primarycolor:Colors.black,),
              label: 'Shop',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('Assets/Images/pin 1.png', scale: 3,color: _selectedIndex==2?AppColor.primarycolor:Colors.black,),
              label: 'Store',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('Assets/Images/shopping-basket 1.png', scale: 3,color: _selectedIndex==3?AppColor.primarycolor:Colors.black,),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('Assets/Images/user (6) 1.png', scale: 3,color: _selectedIndex==4?AppColor.primarycolor:Colors.black,),
              label: 'Profile',
            ),
          ],
        showUnselectedLabels: true,
        currentIndex: _selectedIndex,
        selectedItemColor: AppColor.primarycolor,
        onTap: _onItemTapped,
      ),
    );
  }
}
