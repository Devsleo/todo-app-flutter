import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/Screens/homeScreen.dart';
import 'package:todo_app/Screens/login.dart';

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
        color: Colors.white,
        //height: MediaQuery.of(context).size.height - 130,
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => isLastPage = index == 2);
          },
          children: [
            buildPage(
                color: Colors.white,
                image: "assets/create.png",
                title: "Create your own Schedule",
                subtitle:
                    "Get your todos created in one tap, no complicated work is required"),
            buildPage(
                color: Colors.white,
                image: "assets/category.png",
                title: "Categorise your schedule",
                subtitle:
                    "Organizing your todos to different categories helps you focus more on  important tasks. "),
            buildPage(
                color: Colors.white,
                image: "assets/manage.png",
                title: "Manage and priotize your task easily",
                subtitle:
                    "Increase your productivity by managing your personal task and do them based on the highest priority"),
          ],
        ),
      ),
      bottomSheet: isLastPage
          ? Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                color: Colors.white,
                height: 150,
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
                      height: 50,
                    ),
                    TextButton(
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            primary: Colors.white,
                            backgroundColor: Colors.blue.shade800,
                            minimumSize: Size.fromHeight(60)),
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
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                color: Colors.white,
                height: 150,
                child: Center(
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
                      height: 50,
                    ),
                    TextButton(
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            primary: Colors.white,
                            backgroundColor: Colors.blue.shade800,
                            minimumSize: Size.fromHeight(60)),
                        onPressed: () => _pageController.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeInOut),
                        child: Text("Next"))
                  ],
                )),
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
  return Padding(
    padding: const EdgeInsets.only(top: 100),
    child: Container(
      color: color,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              image,
              height: 230,
              width: 250,
              //fit: BoxFit.cover,
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Text(
                "$title",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Center(
                child: Text(
              "$subtitle",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
            ))
          ],
        ),
      ),
    ),
  );
}
