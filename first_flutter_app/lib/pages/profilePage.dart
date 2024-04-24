import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.greenAccent,
          child: Center(
            child: Text(
              'In the Profile Page',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
