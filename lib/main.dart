import 'package:flutter/material.dart';
import 'package:todo_app/Screens/homeScreen.dart';
import 'package:todo_app/Screens/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const OnBoardingScreen(),
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

