import 'dart:async';

import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  const Button({super.key});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {

  bool checkingFlight = false;
  bool success = false;


  @override
  Widget build(BuildContext context) {
    return !checkingFlight
        ? MaterialButton(
            color: Colors.grey[800],
            onPressed: () {
              setState(()  {
                checkingFlight = true;
              });
                 Future.delayed(const Duration(seconds: 5));
                 success = true;
            },
            child: Text(
              'Check Flight',
              style: TextStyle(color: Colors.white),
            ),
          )
        : !success
            ? CircularProgressIndicator()
            : Icon(
                Icons.check,
                color: Colors.green,
              );
  }
}