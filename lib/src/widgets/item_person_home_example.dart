import 'package:flutter/material.dart';
import 'package:readbook/src/models/person.dart';

class PersonTile extends StatelessWidget {
  final Person _person;

  const PersonTile(this._person);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: ListTile(
        isThreeLine: true,
        contentPadding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
        leading: CircleAvatar(
          backgroundImage: NetworkImage("http:${_person.image}"),
          radius: 50,
        ),
        title: Text(
          _person.name.toUpperCase(),
          maxLines: 2,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        subtitle: Text(
          "${_person.info}",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w200,
            height: 1.8,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}
