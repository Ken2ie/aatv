import 'package:flutter/material.dart';
import 'package:aatvmobilevsn/custom-widgets/bottonNavigationBar.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
   void initState() {
    super.initState();

  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        ),
        bottomNavigationBar: Navigation(),
    );
  }
}
