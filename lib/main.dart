
import 'package:big_market/All%20Screen/Tab%20Bar%20Screen/myaddress.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'All Screen/Auth Screen/signinscreen.dart';
import 'All Screen/Auth Screen/signupscreen.dart';
import 'All Screen/On Boarding/logo_screen.dart';
import 'All Screen/Tab Bar Screen/mybalance.dart';
import 'All Screen/Tab Bar Screen/myorderscrn.dart';
import 'All Screen/bottomnavigation.dart';
import 'All Screen/tabbarscrnfive.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: LogoScreen(),
        );
      },
    );
  }
}