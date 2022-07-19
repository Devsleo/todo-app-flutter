import 'package:flutter/material.dart';
import 'package:todo_app/Constants/color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.sp,
        shadowColor: Constants.PrimaryColorDark,
        iconTheme: IconThemeData(
          size: 40.sp, //change size on your need
          color: Constants.PrimaryColorBlue, //change color on your need
        ),
        backgroundColor: Constants.PrimaryColorDark,
        actions: [Icon(Icons.more_vert)],
      ),
      drawer: SafeArea(
        child: Drawer(
          backgroundColor: Constants.PrimaryColorDark,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 35.h,
                ),
                CircleAvatar(
                  radius: 50.r,
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1519699047748-de8e457a634e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1160&q=80"),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "Olivia",
                  style: TextStyle(
                      color: Constants.TextColorLight,
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "Lawrence",
                  style: TextStyle(
                      color: Constants.TextColorLight,
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "olivialawrence@gmail.com",
                  style: TextStyle(
                      color: Constants.TextColorBlue,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 30.h,
                ),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: 1,
                    itemBuilder: ((context, index) {
                      return Container(
                        height: 50.h,
                        width: 315.w,
                        decoration:
                            BoxDecoration(color: Constants.PrimaryColorLight),
                        child: Row(
                          children: [
                            Text(
                              "All Tasks",
                              style: TextStyle(
                                  fontSize: 18.sp, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      );
                    }))
              ],
            ),
          ),
        ),
      ),
      body: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          color: Constants.PrimaryColorDark,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    "Good afternoon,",
                    style: TextStyle(
                        color: Constants.TextColorLight,
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    "Categories",
                    style: TextStyle(
                        color: Constants.TextColorLight,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  // Container(
                  //   height: 100.h,
                  //   child: SingleChildScrollView(
                  //     scrollDirection: Axis.horizontal,
                  //     child: Row(
                  //       children: List.generate(
                  //         5,
                  //         (index) => Container(
                  //           height: 100.h,
                  //           width: 160.h,
                  //           decoration: BoxDecoration(
                  //               color: Constants.SecondaryColorDark),
                  //         ),
                  //         // SizedBox(
                  //         //   width: 25.h,
                  //         // )
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          )),
    );
  }
}

Widget Button({required Icon icon, required Text text}) {
  return Button(
      icon: Icon(Icons.calendar_month),
      text: Text(
        "All Task",
        style: TextStyle(
            color: Constants.TextColorDark,
            fontSize: 18.sp,
            fontWeight: FontWeight.w500),
      ));
}
