import 'package:first_flutter_app/pages/secondPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'First Page',
          style: TextStyle(
            color: Colors.white,
          ),
        )),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => SecondPage()));
            },
            child: Container(
              height: 200,
              width: 200,
              color: Colors.blueAccent,
              child: const Center(
                  child: Text(
                'First Page',
                style: TextStyle(color: Colors.white),
              )),
            )),
      ),
    );
  }
}
