import 'package:broadway_ui_travel/screen/booking_page.dart';
import 'package:broadway_ui_travel/screen/home_page.dart';
import 'package:broadway_ui_travel/screen/profile_page.dart';
import 'package:flutter/material.dart';

class NavigationBarWidget extends StatefulWidget {
  const NavigationBarWidget({super.key});

  @override
  State<NavigationBarWidget> createState() => _NavigationBarWidgetState();
}

class _NavigationBarWidgetState extends State<NavigationBarWidget> {
  int index = 0;
  final screen = [HomePage(), BookingPage(), ProfilePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        currentIndex: index,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: "Booking"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
