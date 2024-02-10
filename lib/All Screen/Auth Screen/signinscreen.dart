import 'dart:developer';

import 'package:big_market/All%20Screen/Auth%20Screen/signupscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Common/globle_button.dart';
import '../../Common/text_field.dart';
import '../View/homepage.dart';
import '../bottomnavigation.dart';
import 'otpscreen.dart';

class SignInScreen extends StatefulWidget {
   SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
   TextEditingController emailEditingController = TextEditingController();

   TextEditingController passwordEditingController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

   void signinAccount() async {
     String email = emailEditingController.text.trim();
     String passwor = passwordEditingController.text.trim();


     if (email == '' || passwor == '') {
       log('Please fill in the detail');
     } else {
       try {
         UserCredential userCredential = await FirebaseAuth.instance
             .signInWithEmailAndPassword(email: email, password: passwor);
         log('user created');
         if (userCredential.user != null) {
           Navigator.popUntil(context, (route) => route.isFirst);
           Navigator.pushReplacement(
               context, CupertinoPageRoute(builder: (context) => BottomNavigation()));
         }
       } on FirebaseAuthException catch (e) {
         log(e.code.toString());
       } on FirebaseAuthException catch (e) {
         log(e.code.toString());
       }
     }
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
               // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,

                children: [


                  Text('Sign In', style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                  ),
                  Text('Hi! Welcome back, you’ve been missed', style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),),
                  SizedBox(height: 30,),
                  CsCommonTextFieldWidget(isPassword: false, text: 'Email',massage: 'Please Eneter Yor Email', addController: emailEditingController,),
                  SizedBox(height: 30,),
                  CsCommonTextFieldWidget(isPassword: true, text: 'Password', massage: 'Please Eneter Yor Password', addController: passwordEditingController,),

                  SizedBox(height: 10,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('Forgot Password', style: TextStyle(
                        color: Colors.indigo,
                        decoration: TextDecoration.underline,
                      ),
                      ),
                    ],
                  ),

                  SizedBox(height: 10,),

                  // ElevatedButton(
                  //   onPressed: () {
                  //     if (_formKey.currentState!.validate()) {
                  //       ScaffoldMessenger.of(context).showSnackBar(
                  //         const SnackBar(content: Text('Processing Data')),
                  //       );
                  //       // }else{
                  //       //   Navigator.push(context, MaterialPageRoute(builder: (context)=> const OtpVerificatin()));
                  //       // }
                  //     }
                  //     // InkWell(
                  //     //   onTap: () {
                  //     //     Navigator.push(context, MaterialPageRoute(
                  //     //         builder: (context) => const OtpVerificatin()),
                  //     //     );
                  //     //   },
                  //     // );
                  //   },
                  //   child: const Text('Submit'),
                  // ),

                GlobleButton(button: 'Sign In', onTap: (){
                  signinAccount();
                }),

                  SizedBox(height: 30,),

                  Row(

                    children: [
                      Expanded(
                        child: Container(
                          height: 1,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 5,),
                      Text('Or sign in With'),
                      SizedBox(width: 5,),
                      Expanded(
                        child: Container(
                          height: 1,
                          color: Colors.black,
                        ),
                      ),
                    ],

                  ),

                  SizedBox(height: 30,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [

                      SizedBox(width: 40,),
                      Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('Assets/Images/apple-logo (1) 1.png',),scale: 2),
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),

                      Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('Assets/Images/google.png',),scale: 2),
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),

                      Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('Assets/Images/facebook.png',),scale: 2),
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),

                      SizedBox(width: 40,),
                    ],
                  ),

                    SizedBox(height: 20,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Don’t have an account ?', style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),),

                        SizedBox(width: 5,),

                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignUpScreen()),
                            );
                          },
                          child: Text('Sign Up', style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.deepPurple,
                            decoration: TextDecoration.underline,
                          ),),
                        ),
                      ],
                    ),

                ],
              ),
            ),
          ),
        ),
      )
      );
  }
}
