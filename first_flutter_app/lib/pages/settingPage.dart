import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: const Color.fromARGB(255, 100, 85, 85),
          child: const Center(
              child: Text(
            'Setting Page',
            style: TextStyle(color: Colors.white),
          )),
        ),
      ),
    );
  }
}
