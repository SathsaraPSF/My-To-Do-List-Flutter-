import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:to_do_ist/Screens/HomeScreen.dart';
import 'package:to_do_ist/Screens/RegisterScreen.dart';

import 'CalenderScreen.dart';
import 'SettingsScreen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
    Scaffold(
      body:  HomeScreen(),
    ),
    Scaffold(
      body:  CalenderScreen(),
    ),
    Scaffold(
      body:  SettingsScreen(),
    ),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),

            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor:  Colors.indigo[50]!,
              hoverColor:  Colors.indigo[50]!,
              gap: 8,
              activeColor: Colors.indigo[700],
              iconSize: 20,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: Colors.indigo[50]!,
              color: Colors.indigo[200],
              tabs: const [
                GButton(
                  icon: FontAwesomeIcons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: FontAwesomeIcons.calendarDay,
                  text: 'Calender',
                ),
                GButton(
                  icon: FontAwesomeIcons.gear,
                  text: 'Settings',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}