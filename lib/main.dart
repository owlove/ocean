import 'package:flutter/material.dart';
import 'package:ocean_app/home_page.dart';
import 'package:ocean_app/camera_page.dart';
import 'package:ocean_app/qr_code_page.dart';
import 'package:ocean_app/gallery_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

// BottomNavigationBar для перехода между основными страницами приложения
class _MyHomePageState extends State<MyApp> {
  int currentIndex = 0;
  final screens = [
    pageOne(),
    pageTwo(),
    pageThree(),
    pageFour(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: screens[currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Color.fromRGBO(0, 92, 157, 1),
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white70,
            showUnselectedLabels: false,
            showSelectedLabels: false,
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            onTap: (index) => setState(() => currentIndex = index),
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.photo_library),
                label: "Gallery",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.camera),
                label: "Camera",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.qr_code),
                label: "Qr_code",
              ),
            ],
          )
        ),
    );
  }
}
