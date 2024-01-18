import 'package:flutter/material.dart';

import '../../Common/globle_button.dart';
import '../../Common/text_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
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
              CsCommonTextFieldWidget(isPassword: false, text: 'Email',),
              SizedBox(height: 40,),
              CsCommonTextFieldWidget(isPassword: true, text: 'Password',),

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

              SizedBox(height: 30,),

              GlobleButton(button: 'Sign In', onTap: () {  },),

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

            ],
          ),
        ),
      )
      );
  }
}
