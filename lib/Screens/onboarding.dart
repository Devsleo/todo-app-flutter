import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/Constants/color.dart';
import 'package:todo_app/Screens/homescreen.dart';
import 'package:todo_app/Screens/login.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _pageController;
  bool isLastPage = false;
  @override
  void initState() {
    _pageController = PageController();

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Constants.PrimaryColorLight,
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => isLastPage = index == 2);
          },
          children: [
            buildPage(
                color: Constants.PrimaryColorLight,
                image: "assets/create.png",
                title: "Create your own Schedule",
                subtitle:
                    "Get your todos created in one tap, no complicated work is required"),
            buildPage(
                color: Constants.PrimaryColorLight,
                image: "assets/category.png",
                title: "Categorise your schedule",
                subtitle:
                    "Organizing your todos to different categories helps you focus more on  important tasks. "),
            buildPage(
                color: Constants.PrimaryColorLight,
                image: "assets/manage.png",
                title: "Manage and priotize your task easily",
                subtitle:
                    "Increase your productivity by managing your personal task and do them based on the highest priority"),
          ],
        ),
      ),
      bottomSheet: isLastPage
          ? Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Container(
                color: Constants.PrimaryColorLight,
                height: 178.h,
                child: Column(
                  children: [
                    Center(
                      child: SmoothPageIndicator(
                        controller: _pageController,
                        count: 3,
                        onDotClicked: (index) => _pageController.animateToPage(
                            index,
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeInOut),
                      ),
                    ),
                    SizedBox(
                      height: 80.h,
                    ),
                    TextButton(
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.r)),
                            primary: Constants.TextColorLight,
                            backgroundColor: Constants.PrimaryColorDark,
                            minimumSize: Size.fromHeight(67.h)),
                        onPressed: () async {
                          final prefs = await SharedPreferences.getInstance();
                          await prefs.setBool('showHome', true);

                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                        },
                        child: Text("Get Started")),
                  ],
                ),
              ),
            )
          : Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Container(
                color: Constants.PrimaryColorLight,
                height: 178.h,
                child: Column(
                  children: [
                    Center(
                      child: SmoothPageIndicator(
                        controller: _pageController,
                        count: 3,
                        onDotClicked: (index) => _pageController.animateToPage(
                            index,
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeInOut),
                      ),
                    ),
                    SizedBox(
                      height: 80.h,
                    ),
                    TextButton(
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.r)),
                            primary: Constants.TextColorLight,
                            backgroundColor: Constants.PrimaryColorDark,
                            minimumSize: Size.fromHeight(67.h)),
                        onPressed: () => _pageController.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeInOut),
                        child: Text("Next"))
                  ],
                ),
              ),
            ),
    );
  }
}

Widget buildPage(
    {required Color color,
    required String image,
    required String title,
    required String subtitle}) {
  return SafeArea(
    child: Padding(
      padding: EdgeInsets.only(top: 74.h),
      child: Container(
        color: color,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                image,
                height: 276.54.h,
                width: 295.17.h,
                //fit: BoxFit.cover,
              ),
              SizedBox(
                height: 32.46.h,
              ),
              Center(
                child: Text(
                  "$title",
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(fontSize: 28.sp, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 34.h,
              ),
              Center(
                  child: Text(
                "$subtitle",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w500),
              ))
            ],
          ),
        ),
      ),
    ),
  );
}
