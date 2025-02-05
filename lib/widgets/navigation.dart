import 'package:flutter/material.dart';
import 'package:tugas2_gpa38a/dailyruby/home.dart';
import 'package:tugas2_gpa38a/esporty/home.dart';
import 'package:tugas2_gpa38a/flyaway/home.dart';
import 'package:tugas2_gpa38a/mechanicare/home.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  //inisialisasi page
  final List<Widget> page = [
    const DailyHome(),
    const SportHome(),
    const FlyHome(),
    const CareHome(),

  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        selectedItemColor: const Color.fromARGB(255, 1, 29, 77),
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Daily Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: 'Sport Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: 'Fly Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: 'Mechanic Home')
        ],
      ),
    );
  }
}
