import 'package:flutter/material.dart';

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
        title: Text("Skeldo"),
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
