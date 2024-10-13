import 'package:hybrid3/hybrid3.dart' as hybrid3;
import "dart:convert";

class Student {
  Student(List<Map<String, String>> people) {
    print("object");
  }

  void sort(String field) {
    //todo Sort the items in the list based on "field"
  }

  void output() {
    //todo Loop through list and print every item
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

  print(studentMAP[0] is Map<String, String>);//checking to see if the type is right
}
