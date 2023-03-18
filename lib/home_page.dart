import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.purple.shade100,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: GNav(
              backgroundColor: Colors.purple.shade100,
              tabBackgroundColor: Colors.purple.shade50,
              gap: 8,
              onTabChange: (index) {
                print(index);
              },
              padding: EdgeInsets.all(16),
              tabs: const [
                GButton(icon: Icons.home, text: 'Home'),
                GButton(
                  icon: Icons.favorite_border,
                  text: 'Favorite',
                ),
                GButton(
                  icon: Icons.search,
                  text: 'Search',
                ),
                GButton(
                  icon: Icons.settings,
                  text: 'Settings',
                ),
              ]),
        ),
      ),
    );
  }
}
