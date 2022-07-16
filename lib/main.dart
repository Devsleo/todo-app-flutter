import 'package:flutter/material.dart';
import 'package:todo_app/Constants/ThemeData.dart';
import 'package:todo_app/Screens/homeScreen.dart';
import 'package:todo_app/Screens/onboarding.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  await prefs.setBool('showHome', false);
  final showHome = prefs.getBool('showHome') ?? false;
  runApp(MyApp(
    showHome: showHome,
  ));
}

class MyApp extends StatelessWidget {
  final bool showHome;
  const MyApp({Key? key, required this.showHome}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.myDefaultTheme,
      // theme: ThemeData(
      //   // Define the default brightness and colors.
      //   brightness: Brightness.dark,
      //   primaryColor: Colors.lightBlue[800],

      //   // Define the default font family.
      //   fontFamily: 'Georgia',

      //   // Define the default `TextTheme`. Use this to specify the default
      //   // text styling for headlines, titles, bodies of text, and more.
      //   textTheme: const TextTheme(
      //     headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      //     headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
      //     bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
      //   ),
      // ),
      home: showHome ? HomeScreen() : OnBoardingScreen(),
    );
  }
}


//https://github.com/KInglyleo/todo-app-flutter

// -Windows Terminal Commands //Do this If it is your first time pushing to github on your laptop
// git --Version 
// git config --global user.name 
// git config --global user.name "TheNameOfTheMailYouWantToAddIfThereIsNone"

// -Vscode Terminal Commands
// git init //Create an empty Git repository or reinitialize an existing one
// git add . //Add every file contents in the project to the index(Repository)
// git commit -m "First Commit" //-m means message

// -Go To Your Browser
// Login to github
// Create a new Repository

// -Vscode Terminal Commands
// git remote add origin https://github.com/ADDYOURURL
// git push -u origin master /*If there is an error, do this first*/ git branch -M main //Then do the next
// git push -u origin master //The master here could be main, development

// //DONE! Now go back to the github url and refresh the page

// -Steps For Updating Your Repository
// git init 
// git add .
// git commit -m "Done with onboarding screen"
// git push -u origin master
