import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/Constants/color.dart';
import 'package:todo_app/Screens/login.dart';
import 'package:todo_app/Screens/otp.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
                height: 20.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  size: 35.sp,
                  color: Constants.PrimaryColorDark,
                ),
              ),
              SizedBox(
                height: 35.h,
              ),
              Center(
                child: Image.asset(
                  "assets/fpassword.png",
                  height: 203.h,
                  width: 212.w,
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Text(
                "FORGOT PASSWORD",
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
                    // iconColor: Constants.PrimaryColorDark,
                    // focusColor: Constants.PrimaryColorDark,
                    // hoverColor: Constants.PrimaryColorDark,
                    hintText: "Email ID / Mobile Number",
                    icon: Icon(Icons.mail)),
              ),
              SizedBox(
                height: 60.h,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => OtpScreen()));
                },
                child: Text("Submit",
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
            ],
          ),
        ),
      )),
    );
  }
}
