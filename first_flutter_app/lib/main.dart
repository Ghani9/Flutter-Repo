import 'dart:js';

import 'package:first_flutter_app/pages/fistPage.dart';
import 'package:first_flutter_app/pages/profilePage.dart';
import 'package:first_flutter_app/pages/secondPage.dart';
import 'package:first_flutter_app/pages/settingPage.dart';
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
        '/settingpage': (context) => SettingPage(),
      }));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void printTap() {
    print('Container Tapped');
  }

  int _selectedIndex = 0;

  void _navigationBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [ProfilePage(), SettingPage()];

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
        drawer: Drawer(
          backgroundColor: const Color.fromARGB(255, 164, 140, 138),
          child: Column(
            children: [
              const DrawerHeader(
                child: Icon(
                  Icons.person_2,
                  size: 50,
                  color: Colors.white,
                ),
              ),
              ListTile(
                  titleAlignment: ListTileTitleAlignment.center,
                  leading: const Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  title: const Text(
                    'HOME',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/settingpage');
                  })
            ],
          ),
        ),
        body: _pages[_selectedIndex],
        // Center(
        //     child: Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
        //   children: [
        //     GestureDetector(
        //         onTap: () {
        //           Navigator.push(context,
        //               MaterialPageRoute(builder: (context) => FirstPage()));
        //         },
        //         child: Container(
        //           height: 50,
        //           width: 100,
        //           color: Colors.blue,
        //           child: const Center(
        //               child: Text(
        //             'First Page',
        //             style: TextStyle(color: Colors.white),
        //           )),
        //         )),
        //     GestureDetector(
        //         onTap: () {
        //           Navigator.push(context,
        //               MaterialPageRoute(builder: (context) => SecondPage()));
        //         },
        //         child: Container(
        //           height: 50,
        //           width: 100,
        //           color: const Color.fromARGB(255, 131, 33, 243),
        //           child: const Center(
        //               child: Text(
        //             'Second Page',
        //             style: TextStyle(color: Colors.white),
        //           )),
        //         )),
        //   ],
        // )),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigationBottomBar,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Setting'),
          ],
        ));
  }
}
