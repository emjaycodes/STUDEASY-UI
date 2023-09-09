import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../assets.dart';
import '../colors.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    var _selectedIndex = 0;
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: AppColor.gray,
        unselectedItemColor: AppColor.gray5,
        iconSize: 29,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(ImageAssets.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(ImageAssets.chart),
            label: 'chart',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(ImageAssets.profile),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        }
    );
  }
}


