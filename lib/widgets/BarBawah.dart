import 'package:flutter/material.dart';
import 'package:food_shop/pages/AddPage.dart';
import 'package:food_shop/pages/HomePage.dart';
import 'package:food_shop/pages/CardPage.dart';



class Barbawah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Starbak Mart',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BarBawah(),
    );
  }
}

class BarBawah extends StatefulWidget {
  @override
  _NavbarwidgetState createState() => _NavbarwidgetState();
}

class _NavbarwidgetState extends State<BarBawah> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    Cardpage(),
    Addpage(),

  ];

  void onBarTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onBarTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.post_add),
            label: 'Pesanan',
          ),
          
        ],
      ),
    );
  }
}