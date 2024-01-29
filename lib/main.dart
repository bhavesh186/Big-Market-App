import 'package:flutter/material.dart';

import 'All Screen/Auth Screen/otpscreen.dart';
import 'All Screen/Auth Screen/signinscreen.dart';
import 'All Screen/Auth Screen/signupscreen.dart';
import 'All Screen/On Boarding/logo_screen.dart';
import 'All Screen/On Boarding/page2.dart';
import 'All Screen/On Boarding/pageview.dart';
import 'All Screen/Tab Bar Screen/myaddress.dart';
import 'All Screen/View/homepage.dart';
import 'All Screen/View/page11.dart';
import 'All Screen/View/pagenintin.dart';
import 'All Screen/View/pagetwenty.dart';
import 'All Screen/View/shop.dart';
import 'All Screen/View/store.dart';
import 'All Screen/bottomnavigation.dart';
import 'Common/commontabbar.dart';
import 'Practis_screen/datepeaker.dart';
import 'Practis_screen/dropdownbutton.dart';
import 'Practis_screen/dropdownmenu.dart';
import 'Practis_screen/imagepeaker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ImagePeaker(),
    );
  }
}
