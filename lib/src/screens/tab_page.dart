import 'package:flutter/material.dart';
import 'package:readbook/src/models/person.dart';
import 'package:readbook/src/resources/crawl_data.dart';
import 'package:readbook/src/widgets/item_person_home.dart';

class TabPage extends StatefulWidget {
  TabPage({Key key}) : super(key: key);
  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, bottom: 0),
      color: Colors.black12,
      child: FutureBuilder<List<Person>>(
        future: fetchPerson(),
        builder: _build,
      ),
    );
  }

  Widget _build(context, snapshot) {
    if (snapshot.hasData) {
      return ListView.builder(
        itemCount: snapshot.data.length,
        itemBuilder: (context, index) => _buildItem(snapshot.data[index]),
      );
    } else if (snapshot.hasError) {
      return Center(child: Text("${snapshot.error}"));
    }
    // By default
    return Center(
      child: Text("Loadding...."),
    );
  }

  Widget _buildItem(Person person) {
    return PersonItem(
      person: person,
    );
  }
}
