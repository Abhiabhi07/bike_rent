import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import 'screens/check_out/check_out_screen.dart';
import 'screens/home/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      navBarStyle: NavBarStyle.style2,
      items: [
        PersistentBottomNavBarItem(
            icon: Icon(Icons.home_outlined, color: Colors.black)),
        PersistentBottomNavBarItem(
          icon: Image.asset('assets/map.png', height: 20,width:25)
        ),
        PersistentBottomNavBarItem(
          icon:  Image.asset('assets/icons8-card-wallet-24.png',height: 20,width:25 )
        ),
        PersistentBottomNavBarItem(
          icon: Icon(CupertinoIcons.settings_solid, color: Colors.black),
        ),
      ],
      screens: [
        HomeScreen(),
        Container(),
        CheckOutScreen(),
        Container(),
      ],
      controller: _controller,
    );
  }
}
