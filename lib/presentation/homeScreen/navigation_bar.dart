import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GNav(tabs: [
        GButton(icon: Icons.home),
        GButton(icon: Icons.shopping_cart),
        GButton(icon: Icons.person_rounded),
      ]),
    );
  }
}
