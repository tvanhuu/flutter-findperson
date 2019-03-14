import 'package:flutter/material.dart';
import 'package:readbook/src/models/person.dart';
import 'package:readbook/src/resources/crawl_data.dart';
import 'package:readbook/src/widgets/item_person_home.dart';
import 'package:readbook/src/widgets/item_person_home_example.dart';

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
        builder: _buildPersonList,
      ),
    );
  }

  Widget _buildPersonList(BuildContext context, AsyncSnapshot snapshot) {
    if (snapshot.hasData) {
      final persons = snapshot.data;

      return ListView.builder(
        itemCount: persons.length,
        itemBuilder: (context, index) => PersonItem(person: persons[index]),
        // itemBuilder: (context, index) => PersonTile(persons[index]),
      );
    }

    if (snapshot.hasError) {
      return Center(child: Text("${snapshot.error}"));
    }

    return Center(
      child: Text("Loadding...."),
    );
  }
}
