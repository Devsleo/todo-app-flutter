import 'package:flutter/material.dart';
import 'package:todo_app/Constants/color.dart';
import 'package:todo_app/Screens/forgotpassword.dart';
import 'package:todo_app/Screens/homescreen.dart';
import 'package:todo_app/Screens/password.dart';
import 'package:todo_app/Screens/signup.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Container(
            //alignment: Alignment.topCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 76.h,
                ),
                Center(
                    child: Image.asset(
                  "assets/login.png",
                  height: 203.h,
                  width: 212.w,
                )),
                SizedBox(
                  height: 30.h,
                ),
                Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w600,
                      color: Constants.TextColorDark),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Expanded(
                  flex: 1,
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        hintText: "Email ID", icon: Icon(Icons.mail)),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: TextFormField(
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                        hintText: "Password", icon: Icon(Icons.lock)),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ForgotPassword()));
                        },
                        child: Text(
                          textAlign: TextAlign.end,
                          "forgot password?",
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: Constants.PrimaryColorDark),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Text("Login",
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
                  height: 5.h,
                ),
                Center(
                  child: Text(
                    "OR",
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                TextButton(
                  onPressed: () {},
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/google logo.png",
                        height: 30.h,
                        width: 30.w,
                      ),
                      SizedBox(
                        width: 25.w,
                      ),
                      Text(
                        "Login with google",
                        style: TextStyle(
                            color: Constants.TextColorDark,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r)),
                      primary: Constants.TextColorDark,
                      backgroundColor: Constants.SecondaryColorLight,
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
                        "New to Todo? ",
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: Constants.TextColorDark),
                      ),
                      InkWell(
                        onTap: (() {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SignUpScreen()));
                        }),
                        child: Text(
                          "Register",
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
        ),
      ),
    );
  }
}
