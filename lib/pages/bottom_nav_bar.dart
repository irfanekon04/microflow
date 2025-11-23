import 'package:flutter/material.dart';
import 'package:microflow/pages/homepage.dart';
import 'package:microflow/pages/loans_page.dart';
import 'package:microflow/pages/members_page.dart';
import 'package:microflow/pages/reports_page.dart';
import 'package:microflow/pages/savings_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  final List<Widget> _screens = <Widget>[
    Homepage(),
    MembersPage(),
    LoansPage(),
    SavingsPage(),
    ReportsPage(),
  ];
  List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: 'Home'),
    BottomNavigationBarItem(icon: Icon(Icons.people_rounded), label: 'Members'),
    BottomNavigationBarItem(
      icon: Icon(Icons.description_rounded),
      label: 'Loans',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.savings_rounded),
      label: 'Savings',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.bar_chart_rounded),
      label: 'Reports',
    ),
  ];
  void onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
    print(_selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf8f8f8),
      body: Center(child: _screens[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green.shade800,
        unselectedItemColor: Colors.grey.shade800,
        currentIndex: _selectedIndex,
        onTap: onTap,
        items: items,
        showUnselectedLabels: true,
      ),
    );
  }
}
