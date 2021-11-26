import 'package:flutter/material.dart';
import 'package:smart_car_parking/Screens/pages/Account%20Page/AccountPage.dart';
import 'package:smart_car_parking/Screens/pages/Chat%20Page/ChatPage.dart';
import 'package:smart_car_parking/Screens/pages/Home%20Page/HomePage.dart';
import 'package:smart_car_parking/Screens/pages/Invoice%20Page/InvoicePage.dart';
import 'package:smart_car_parking/Screens/pages/ServicesPage/ServicesPage.dart';
import 'package:smart_car_parking/constants.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  List pages = [
    HomePage(),
    ChatPage(),
    ServicesPage(),
    InvoicePage(),
    AccountPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        selectedItemColor: kPrimaryColor,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inbox_outlined),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_border_outlined),
            label: 'Services',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop_outlined),
            label: 'Invoice',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            label: 'Account',
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
