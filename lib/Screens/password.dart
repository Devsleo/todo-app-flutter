import 'package:flutter/material.dart';
import 'package:todo_app/Constants/color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/Screens/login.dart';

class Password extends StatefulWidget {
  const Password({Key? key}) : super(key: key);

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
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
                  "assets/password.png",
                  height: 203.h,
                  width: 212.w,
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Text(
                "PASSWORD",
                style: TextStyle(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w600,
                    color: Constants.TextColorDark),
              ),
              SizedBox(
                height: 20.h,
              ),
              TextFormField(
                obscureText: true,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: "New Password",
                    icon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.visibility_off)),
              ),
              SizedBox(
                height: 5.h,
              ),
              TextFormField(
                obscureText: true,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: "Confirm New Password",
                    icon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.visibility_off)),
              ),
              SizedBox(
                height: 60.h,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
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
