import 'package:flutter/material.dart';
import 'package:todo_app/Constants/color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/Screens/login.dart';
import 'package:todo_app/Screens/password.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 76.h,
              ),
              Center(
                child: Image.asset(
                  "assets/signup.png",
                  height: 203.h,
                  width: 212.w,
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Text(
                "Sign up",
                style: TextStyle(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w600,
                    color: Constants.TextColorDark),
              ),
              SizedBox(
                height: 20.h,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: "Email ID", icon: Icon(Icons.mail)),
              ),
              SizedBox(
                height: 2.5.h,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: "Full Name", icon: Icon(Icons.person)),
              ),
              SizedBox(
                height: 2.5.h,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: "Mobile", icon: Icon(Icons.phone)),
              ),
              SizedBox(
                height: 35.h,
              ),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "By signing up, you agree to our ",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Constants.TextColorDark),
                  ),
                  InkWell(
                    onTap: (() {}),
                    child: Text(
                      "Terms & Conditions ",
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Constants.PrimaryColorDark),
                    ),
                  ),
                  Text(
                    " and",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Constants.TextColorDark),
                  ),
                  InkWell(
                    onTap: (() {}),
                    child: Text(
                      " Privacy Policy.",
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Constants.PrimaryColorDark),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Password()));
                },
                child: Text("Continue",
                    style: TextStyle(
                        color: Constants.TextColorLight,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500)),
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r)),
                    primary: Constants.TextColorLight,
                    backgroundColor: Constants.PrimaryColorDark,
                    minimumSize: Size.fromHeight(67.h)),
              ),
              SizedBox(
                height: 25.h,
              ),
              Center(
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account? ",
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Constants.TextColorDark),
                    ),
                    InkWell(
                      onTap: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      }),
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: Constants.PrimaryColorDark),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
// SCREEN UTIL CONVERTS THE SPECIFIC SCREEN SIZES INTO THE RATIO BASED SIZES AND THEN MAPS THE RATIO BASED SIZES TO THE SCREEN CONFIGURATION YOUR APP IS RUNNING