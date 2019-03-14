import 'package:flutter/material.dart';

class TabData extends StatelessWidget {
  final String title;
  final IconData icon;
  final Widget widget;

  TabData({this.title, this.icon, this.widget});

  BottomNavigationBarItem get bottomBarItem {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      title: Text(title),
    );
  }

  @override
  Widget build(BuildContext context) => widget;
}
