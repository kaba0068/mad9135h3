import 'package:hybrid3/hybrid3.dart' as hybrid3;
import "dart:convert";

class Student {
  List<Map<String, String>> people;

  Student(this.people);

  void sort(String field) {
    people.sort((a, b) => a[field]?.compareTo(b[field] ?? "") ?? -1);
  }

  void output() {
    for (var person in people) {
      print(
          "First_name: ${person["first"]}, Last_name: ${person["last"]}, Email: ${person["email"]}");
    }
  }

  void plus(Map<String, String> person) {
    people.add(person);
  }

  void remove(String field, String value) {
    people.removeWhere((people) => people[field] == value);
  }
}

void main(List<String> arguments) {
  String studentJSON = '''
[
  {"first":"Steve", "last":"Griffith", "email":"griffis@algonquincollege.com"},
  {"first":"Adesh", "last":"Shah", "email":"shaha@algonquincollege.com"},
  {"first":"Tony", "last":"Davidson", "email":"davidst@algonquincollege.com"},
  {"first":"Adam", "last":"Robillard", "email":"robilla@algonquincollege.com"}
]
''';

  List studentLIST = json.decode(studentJSON);

  List<Map<String, String>> studentMAP =
      studentLIST.map((item) => Map<String, String>.from(item)).toList();

  Student s = Student(studentMAP);
  //Testing the put method
  print("Original");
  s.output();
  s.plus({"first": "Hugues", "last": "Joan", "email": "huguesjoan9@gmail.com"});
  print("New");
  s.output();
  s.remove("first", "Hugues");
  print("After remove");
  s.output();
}
