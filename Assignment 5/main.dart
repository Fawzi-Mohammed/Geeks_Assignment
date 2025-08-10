import 'student.dart';

void main() {
  Student s1 = Student('Fawzi', 60);
  Student s2 = Student('Ahmmed', 30);
  Student s3 = Student('Mohammed', 90);
  Student s4 = Student('Ail', 80);

  s2.address = 'Egypt';
  s2.email = 'Ahmmed@gmail.come';
  s2.phone = '05642342';
  s3.address = 'Mars';
  s3.email = 'Mohammed@gmail.come';
  s3.phone = '0020033200';
  s4.address = 'Canada';
  s4.email = 'Ail@gmail.come';
  s4.phone = '4340323100349';

  s1.address = 'Gaza';
  s1.email = 'fawzi@gmail.come';
  s1.phone = '0594151163';
  List<Student> listOfStudent = [s1, s2, s3, s4];

  for (var element in listOfStudent) {
    if (element.grade > 50) {
      print(element);
    }
  }
  
}
