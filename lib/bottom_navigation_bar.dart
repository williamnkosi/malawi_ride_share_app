import 'package:flutter/material.dart';
import 'package:malawi_ride_share_app/pages/account_page/account_page.dart';
import 'package:malawi_ride_share_app/pages/activity_page/activity_page.dart';
import 'package:malawi_ride_share_app/pages/home_page/home_page.dart';

class AppBottomNavigationBar extends StatefulWidget {
  const AppBottomNavigationBar({super.key});

  @override
  State<AppBottomNavigationBar> createState() => _AppBottomNavigationBarState();
}

class _AppBottomNavigationBarState extends State<AppBottomNavigationBar> {
  int _selectedIndex = 0;
  Widget _generatePage() {
    switch (_selectedIndex) {
      case 0:
        return const HomePage();
      case 1:
        return const ActivityPage();
      case 2:
        return const AccountPage();
    }
    return const HomePage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _generatePage(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (value) => setState(() => _selectedIndex = value),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_activity_rounded),
            label: 'Activity',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          )
        ],
      ),
    );
  }
}
