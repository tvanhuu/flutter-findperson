import 'package:flutter/material.dart';
import 'package:readbook/src/screens/tab_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: AppBar(
            automaticallyImplyLeading: false,
            bottom: TabBar(
              tabs: [
                Tab(text: "HOT"),
                Tab(text: "MEN"),
                Tab(text: "GIRL"),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            TabPage(),
            Icon(Icons.access_alarm),
            Icon(Icons.access_alarm),
          ],
        ),
      ),
    );
  }
}
