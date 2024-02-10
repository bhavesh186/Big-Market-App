import 'dart:developer';

import 'package:big_market/Practis_screen/dropdownbutton.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../Common/globle_button.dart';
import '../../Common/text_field.dart';
import 'otpscreen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

TextEditingController emailEditingController = TextEditingController();
TextEditingController nameController = TextEditingController();
TextEditingController passwordEditingController = TextEditingController();

class _SignUpScreenState extends State<SignUpScreen> {
  void creatAccount() async {
    String email = emailEditingController.text.trim();
    String passwor = passwordEditingController.text.trim();
    String name = nameController.text.trim();

    if (email == '' || passwor == '' || name == '') {
      log('Please fill in the detail');
    } else {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: passwor);
        log('user created');
        if (userCredential.user != null) {
          Navigator.pop(context);
        }
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
          child: SingleChildScrollView(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Text(
                  'Create Account',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Fill your information below or register',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black38,
                  ),
                ),
                Text(
                  'With your social account',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black38,
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                CsCommonTextFieldWidget(
                  isPassword: false,
                  text: 'Name',
                  massage: 'Please Enter Your Name',
                  addController: nameController,

                  //addController: name,
                ),
                SizedBox(
                  height: 15,
                ),
                CsCommonTextFieldWidget(
                  isPassword: false,
                  text: 'Email',
                  massage: 'Please Enter Your Email',
                 addController: emailEditingController,
                ),
                SizedBox(
                  height: 15,
                ),
                CsCommonTextFieldWidget(
                  isPassword: true,
                  text: 'Password',
                  massage: 'Please Enter Your Password',
                  addController: passwordEditingController,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text('Agree with Term & Condition'),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                GlobleButton(
                  button: 'Sign Up',
                  onTap: () {
                    creatAccount();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OtpVerificatin()));
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 1,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text('Or sign in With'),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Container(
                        height: 1,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 40,
                    ),
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              'Assets/Images/apple-logo (1) 1.png',
                            ),
                            scale: 2),
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              'Assets/Images/google.png',
                            ),
                            scale: 2),
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              'Assets/Images/facebook.png',
                            ),
                            scale: 2),
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
