import 'package:first_flutter_app/pages/fistPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Second Page',
          style: TextStyle(color: Colors.white),
        )),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: GestureDetector(
            onTap: () {
              Navigator.pop(context);

              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => FirstPage()));
            },
            child: Container(
              height: 200,
              width: 200,
              color: Colors.deepPurple,
              child: const Center(
                  child: Text(
                'Second Page',
                style: TextStyle(color: Colors.white),
              )),
            )),
      ),
    );
  }
}
