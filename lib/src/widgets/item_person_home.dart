import 'package:flutter/material.dart';
import 'package:readbook/src/models/person.dart';

class PersonItem extends StatelessWidget {
  final Person person;

  const PersonItem({Key key, this.person}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(top: 8),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 8.0),
        child: Row(
          children: [
            //box avatar
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage("http:${person.image}"),
            ),
            SizedBox(width: 8),
            //box information
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  person.name.toUpperCase(),
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "${person.info}",
                  maxLines: 3,
                  style: TextStyle(
                    fontSize: 12,
                    height: 1.6,
                    fontWeight: FontWeight.w200,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
