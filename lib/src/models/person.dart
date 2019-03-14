class Person {
  final String link;
  final String image;
  final String name;
  final String about;
  final String salary;
  final String address;

  const Person({
    this.link,
    this.image,
    this.name,
    this.about,
    this.salary,
    this.address,
  });

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
      link: json['link'],
      image: json['image'],
      name: json['name'],
      about: json['about'],
      salary: json['salary'],
      address: json['address'],
    );
  }

  String get info => """
$about
$salary
$address
""";
}
