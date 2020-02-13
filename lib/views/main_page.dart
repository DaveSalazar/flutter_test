

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_sabroso/views/home.dart';
import 'package:flutter_app_sabroso/views/my_menu.dart';
import 'package:flutter_app_sabroso/views/profile.dart';
import 'package:flutter_app_sabroso/views/reports.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainPage();
  }
}

class _MainPage extends State<MainPage> {

  int _currentIndex = 0;
  final List<Widget> _children = [
    Home(),
    MyMenu(),
    Reports(),
    Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add
        ),
      ),
      body: _children[_currentIndex], // new
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped, // new
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart, color: Colors.grey),
                title: Text("Pedidos", style: TextStyle(color: Colors.grey))
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.restaurant, color: Colors.grey),
                title: Text("Mi Menu", style: TextStyle(color: Colors.grey))
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.equalizer, color: Colors.grey),
                title: Text("Reportes", style: TextStyle(color: Colors.grey))
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person, color: Colors.grey),
                title: Text("Perfil", style: TextStyle(color: Colors.grey))
            ),
        ],

      )
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}