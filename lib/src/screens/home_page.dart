import 'package:flutter/material.dart';
import 'package:readbook/src/screens/tab_page.dart';
import 'package:readbook/src/widgets/tab_data.dart';

class HomePage extends StatefulWidget {
  final List<TabData> _tabs = [
    TabData(title: "HOT", widget: TabPage()),
    TabData(title: "MEN", widget: Icon(Icons.access_alarm)),
    TabData(title: "GIRL", widget: Icon(Icons.access_alarm)),
  ];

  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<TabData> get tabs => widget._tabs;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: AppBar(
            bottom: TabBar(
              tabs: tabs.map((tab) => Tab(text: tab.title)).toList(),
            ),
          ),
        ),
        body: TabBarView(
          children: tabs.map((tab) => tab.widget).toList(),
        ),
      ),
    );
  }
}
