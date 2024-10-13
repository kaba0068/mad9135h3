import 'package:hybrid3/hybrid3.dart' as hybrid3;
import "dart:convert";

class Student {
  List<Map<String, String>>
      people; //setting it as a field to make sure its accessible in the whole class

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
    //todo Add a new person to the list
  }

  void remove(String field) {
    //todo Remove the first item in the list that matches "field" using removeWhere()
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
  //Testing Sort and Output methods
  print("Unsorted");
  s.output();
  s.sort("last");
  print("Sorted");
  s.output();
}
