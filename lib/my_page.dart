
import 'package:flutter/material.dart';
import 'package:t2303e_flutter/screen/cart/cart_screen.dart';
import 'package:t2303e_flutter/screen/home/home_screen.dart';
import 'package:t2303e_flutter/screen/profile/profile_screen.dart';
import 'package:t2303e_flutter/screen/search/search_screen.dart';

class MyPage extends StatefulWidget{
  const MyPage({Key? key}) : super(key: key);

  @override
  _MyPageState createState() => _MyPageState();
}
// nơi quản lý state
class _MyPageState extends State<MyPage>{
  // các state thì chỉ là các biến thông thường
  final List<Widget>  screen = [
    HomeScreen(),
    SearchScreen(),
    CartScreen(),
    ProfileScreen()
  ];
  int _selectedIndex = 0;

  changeTab(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("T2303E Flutter Demo App",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.orange,
      ),
      body: screen[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) => changeTab(index),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search_outlined),label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined),label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined),label: "Profile")
        ],
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.black54,
      ),
    );
  }
}