import 'package:first_flutter_app/pages/fistPage.dart';
import 'package:first_flutter_app/pages/secondPage.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

void main() {
  // runApp(const MyApp());
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyApp(),
      routes: {
        '/home': (context) => MyApp(),
        '/secondpage': (context) => SecondPage(),
        '/firstpage': (context) => FirstPage(),
      }));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void printTap() {
    print('Container Tapped');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Home Page',
          style: TextStyle(color: Colors.white),
        )),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FirstPage()));
              },
              child: Container(
                height: 50,
                width: 100,
                color: Colors.blue,
                child: const Center(
                    child: Text(
                  'First Page',
                  style: TextStyle(color: Colors.white),
                )),
              )),
          GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondPage()));
              },
              child: Container(
                height: 50,
                width: 100,
                color: const Color.fromARGB(255, 131, 33, 243),
                child: const Center(
                    child: Text(
                  'Second Page',
                  style: TextStyle(color: Colors.white),
                )),
              )),
        ],
      )),
    );
    // routes: {
    //   '/home': (context) => MyApp(),
    //   '/secondpage': (context) => SecondPage(),
    //   '/firstpage': (context) => FirstPage(),
    // },
    // Scaffold(
    // appBar: AppBar(
    //   backgroundColor: Colors.blueGrey,
    //   title: const Center(
    //     child: Text(
    //       "My First Flutter App",
    //       style: TextStyle(
    //           color: Colors.white,
    //           fontSize: 30,
    //           fontWeight: FontWeight.w900,
    //           letterSpacing: 2),
    //     ),
    //   ),
    //   leading: const Icon(
    //     Icons.home,
    //     color: Colors.white,
    //     size: 40,
    //   ),
    //   actions: [
    //     IconButton(
    //         onPressed: () {
    //           print('Icons is Clicked');
    //         },
    //         icon: Icon(Icons.logout))
    //   ],
    // ),
    // backgroundColor: const Color.fromARGB(255, 54, 181, 244),
    // body: Center(
    //     child: GestureDetector(
    //         onTap: printTap,
    //         child: Container(
    //           height: 100,
    //           width: 100,
    //           color: Colors.black26,
    //           child: const Center(
    //               child: Text('Tap Me!',
    //                   style: TextStyle(
    //                     color: Colors.white,
    //                   ))),
    //         ))),
    // GridView.builder(
    //     itemCount: 64,
    //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    //         crossAxisCount: 3),
    //     itemBuilder: (context, index) => Container(
    //           color: const Color.fromARGB(255, 2, 130, 40),
    //           margin: const EdgeInsets.all(2),
    //         ))
    // ListView.builder(
    //     itemCount: 20,
    //     itemBuilder: (context, index) => ListTile(
    //           title: Text(index.toString()),
    //           tileColor: Color.fromRGBO(
    //               12 * int.parse(index.toString()),
    //               12 * int.parse(index.toString()),
    //               12 * int.parse(index.toString()),
    //               1),
    //         ))
    // ListView(scrollDirection: Axis.horizontal, children: [
    //   Container(
    //     width: 200,
    //     height: 200,
    //     color: Colors.blue[200],
    //   ),
    //   Container(
    //     width: 200,
    //     height: 200,
    //     color: Colors.blue[400],
    //   ),
    //   Container(
    //     width: 200,
    //     height: 200,
    //     color: Colors.blue[600],
    //   )
    // ])
    // Center(
    //   child: Container(
    //     width: 200,
    //     height: 200,
    //     color: Colors.blueAccent,
    //     child: const Center(child: Text('HELLO WORLD')),
    //   ),
    // ),
    // ),
  }
}
