import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
              width: 20,
              padding: EdgeInsets.only(left: 20),
              margin: EdgeInsets.symmetric(vertical: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset('assets/png/user.jpg',
                // width: ,
                fit: BoxFit.cover,
                ),
              ),
            );
  }
}