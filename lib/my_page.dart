
import 'package:flutter/material.dart';

class MyPage extends StatefulWidget{
  const MyPage({Key? key}) : super(key: key);

  @override
  _MyPageState createState() => _MyPageState();
}
// nơi quản lý state
class _MyPageState extends State<MyPage>{
  // các state thì chỉ là các biến thông thường

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("T2303E Flutter Demo App",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.orange,
      ),
      body: const Text("Body App..."),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
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