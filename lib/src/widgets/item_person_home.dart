import 'package:flutter/material.dart';
import 'package:readbook/src/models/person.dart';

class PersonItem extends StatelessWidget {
  final Person person;

  PersonItem({Key key, this.person}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      key: Key(person.toString()),
      color: Colors.white,
      margin: EdgeInsets.only(top: 8),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 8.0),
        child: Row(
          children: [
            //box avatar
            Expanded(
              flex: 1,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage("http:${person.image}"),
                  ),
                ),
              ),
            ),
            SizedBox(width: 8),
            //box information
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    person.name.toUpperCase(),
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  SizedBox(height: 8),
                  _buildText(
                    person.about,
                  ),
                  SizedBox(height: 8),
                  _buildText(person.salary),
                  SizedBox(height: 8),
                  _buildText(person.address)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildText(title) {
    return Text(
      title,
      maxLines: 2,
      style: TextStyle(
          fontSize: 12, fontWeight: FontWeight.w200, color: Colors.black87),
    );
  }
}
