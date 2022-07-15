import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/Screens/homeScreen.dart';

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
      body: Padding(
        padding: const EdgeInsets.only(bottom: 80),
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => isLastPage = index == 2);
          },
          children: [
            buildPage(
                color: Colors.white,
                image: "assets/category.png",
                title: "Create your own Schedule",
                subtitle:
                    "Increase your productivity by managing your personal task and do them based on the highest priority"),
            buildPage(
                color: Colors.white,
                image: "assets/category.png",
                title: "Categorise your schedule",
                subtitle:
                    "Increase your productivity by managing your personal task and do them based on the highest priority"),
            buildPage(
                color: Colors.white,
                image: "assets/category.png",
                title: "Manage and priotize your task easily",
                subtitle:
                    "Increase your productivity by managing your personal task and do them based on the highest priority"),
          ],
        ),
      ),
      bottomSheet: isLastPage
          ? Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextButton(
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
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Text("Get Started")),
            )
          : Container(
              height: 80,
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
                  TextButton(
                      onPressed: () => _pageController.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeInOut),
                      child: Text("Next"))
                ],
              )),
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
    padding: const EdgeInsets.only(top: 50),
    child: Container(
      color: color,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Image.asset(image),
            SizedBox(
              height: 32,
            ),
            Center(
              child: Text(
                "$title",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Center(child: Text("$subtitle"))
          ],
        ),
      ),
    ),
  );
}
