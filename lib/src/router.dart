import 'package:flutter/material.dart';
import 'package:readbook/src/widgets/tab_data.dart';
import 'package:readbook/src/screens/home_page.dart';
import 'package:readbook/src/screens/messages_page.dart';
import 'package:readbook/src/screens/navigation_page.dart';

class Router extends StatefulWidget {
  final List<TabData> _tabs = [
    TabData(
      icon: Icons.home,
      title: "News",
      widget: HomePage(),
    ),
    TabData(
      icon: Icons.play_circle_filled,
      title: "Videos",
      widget: MessagesPage(),
    ),
    TabData(
      icon: Icons.radio,
      title: "Radio",
      widget: NavigationPage(),
    ),
  ];

  Router({Key key}) : super(key: key);

  @override
  _Router createState() => _Router();
}

class _Router extends State<Router> {
  int _tabIndex = 0;

  List<TabData> get tabs => widget._tabs;

  Widget get selectedTab => tabs[_tabIndex];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: selectedTab,
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.blue,
        onTap: (index) => setState(() {
              _tabIndex = index;
            }),
        currentIndex: _tabIndex,
        items: tabs.map((tab) => tab.bottomBarItem).toList(),
      ),
    );
  }
}
