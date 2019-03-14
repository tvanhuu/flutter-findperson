import 'package:html/parser.dart' show parse;
import 'package:http/http.dart' as http;
import 'package:readbook/src/models/person.dart';

Future<List<Person>> fetchPerson() async {
  final res = await http.read('http://timnguoiyeu.com.vn');
  final docs = parse(res);
  return docs.querySelectorAll(".profile-card").map<Person>(
    (per) {
      return Person(
              link: per.querySelector("a").attributes["href"] ?? ["N/A"],
              image: per.querySelector(".thumbnail>img").attributes["src"] ??
                  ["N/A"],
              name: per.querySelector(".user-container>txt").nodes[0].text ??
                  ["N/A"],
              about:
                  per.querySelector(".about-me>txt").nodes[1].text ?? ["N/A"],
              salary:
                  per.querySelector(".about-me>txt").nodes[5].text ?? ["N/A"],
              address: per.querySelector(".about-me>txt").nodes[9].text) ??
          ["N/A"];
    },
  ).toList();
}
