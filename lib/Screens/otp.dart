import 'package:flutter/material.dart';
import 'package:todo_app/Constants/color.dart';
import 'package:todo_app/Screens/login.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  "assets/otp.png",
                  height: 203.h,
                  width: 212.w,
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Text(
                "Enter OTP",
                style: TextStyle(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w600,
                    color: Constants.TextColorDark),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text("A 4 digit code has been sent to +234 9071601775",
                  style: TextStyle(
                      color: Constants.TextColorDark,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500)),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                        color: Constants.SecondaryColorLight,
                        borderRadius: BorderRadius.circular(10.r)),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Container(
                    height: 50.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                        color: Constants.SecondaryColorLight,
                        borderRadius: BorderRadius.circular(10.r)),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Container(
                    height: 50.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                        color: Constants.SecondaryColorLight,
                        borderRadius: BorderRadius.circular(10.r)),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Container(
                    height: 50.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                        color: Constants.SecondaryColorLight,
                        borderRadius: BorderRadius.circular(10.r)),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Center(
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Didn’t receive code?  ",
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Constants.TextColorDark),
                    ),
                    InkWell(
                      onTap: (() {}),
                      child: Text(
                        "Request again ",
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: Constants.PrimaryColorDark),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Center(
                child: InkWell(
                  onTap: (() {}),
                  child: Text(
                    "Get via call",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Constants.PrimaryColorDark),
                  ),
                ),
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
