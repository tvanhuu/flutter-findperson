import 'package:flutter/material.dart';
import 'package:readbook/src/screens/home_page.dart';
import 'package:readbook/src/screens/messages_page.dart';
import 'package:readbook/src/screens/navigation_page.dart';

class Router extends StatefulWidget {
  Router({Key key}) : super(key: key);

  @override
  _Router createState() => _Router();
}

class _Router extends State<Router> {
  int _currentIndex = 0;
  final List<String> _titleRoute = ["News", "Videos", "Radio"];
  final List<Widget> _children = [
    HomePage(),
    MessagesPage(),
    NavigationPage(),
  ];
  final List<IconData> _icon = [
    Icons.home,
    Icons.play_circle_filled,
    Icons.radio,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.blue,
        onTap: onSwitchRouter,
        currentIndex: _currentIndex,
        items: [
          _buildItemNav(0),
          _buildItemNav(1),
          _buildItemNav(2),
        ],
      ),
    );
  }

  BottomNavigationBarItem _buildItemNav(int index) {
    return BottomNavigationBarItem(
      icon: Icon(_icon[index]),
      title: Text(_titleRoute[index]),
    );
  }

  void onSwitchRouter(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
