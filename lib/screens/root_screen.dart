import 'package:flutter/material.dart';
import 'package:mola/screens/form_screen.dart';
import 'package:mola/screens/profile_screen.dart';
import 'package:mola/screens/home_screen.dart';
import 'package:mola/screens/transaction_screen.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int _currentIndex = 0;

  List<Widget> pages = [
    HomeScreen(),
    TransactionScreen(),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.blue,
    ),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.description),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_scanner),
            label: 'QR Code',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.redeem_outlined),
            label: 'Rewards',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Profile',
          ),
        ],
        currentIndex: _currentIndex,
        onTap: ((value) {
          setState(() {
            _currentIndex = value;
          });
        }),
      ),
      body: pages[_currentIndex],
    );
  }
}
