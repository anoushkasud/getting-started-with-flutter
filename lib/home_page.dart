import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final int days = 15;
  final String lan = "flutter";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text(
              "Welcome to $days days of $lan by "), //string interpolation using $ sign or + sign
        ),
      ),
      drawer: Drawer(),
    );
  }
}
