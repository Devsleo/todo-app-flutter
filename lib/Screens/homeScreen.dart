import 'package:flutter/material.dart';
import 'package:todo_app/Constants/color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(backgroundColor: Constants.PrimaryColorDark),
      appBar: AppBar(
        actions: [Icon(Icons.more_vert)],
      ),
      body: Center(
        child: Container(
          height: 100,
          width: double.infinity,
          color: Colors.blue,
        ),
      ),
    );
  }
}
