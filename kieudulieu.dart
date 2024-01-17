class Nguoi {
  String name;
  int age;
  Nguoi(this.name, this.age);
}

void main() {
  String ten = "Nguyen Dan Truong";
  bool isStudent = true;
  print("La sinh vien : $isStudent");

  dynamic c = 1;
  print("Gia tri bien dynamic la : $c");

  List<int> numbers = [1, 2, 3, 4, 5];
  print("Gia tri cua numbers : $numbers, so phan tu : ${numbers.length}");

  Map<String, dynamic> sinhvien = {
    'ten': 'Nguyen Ngoc Dan Truong',
    'age': 20,
    'isStudent': true
  };
  print(
      'Ten : ${sinhvien['ten']}, Tuoi : ${sinhvien['age']}, La sinh vien : ${sinhvien['isStudent']}');
  int songuyen = 5;
  double sothuc = songuyen.toDouble();
  print('Gia tri so thuc chuyen doi la : $sothuc');
  double sothuc2 = 3.14;
  int songuyen2 = sothuc2.toInt();
  print('Gia tri so nguyen chuyen doi la : $songuyen2');
  if (songuyen2 == 3) {
    print('So nguyen chuyen doi = 3');
  } else {
    print('So nguyen chuyen doi khac 3');
  }
  String hoaqua = 'tao';
  switch (hoaqua) {
    case 'tao':
      {
        print('Day la qua tao');
        break;
      }
    case 'mit':
      {
        print('Day la qua mit');
        break;
      }
    default:
      {
        print('Chua biet qua gi');
      }
  }
  int songuyen3 = songuyen2 == 3 ? songuyen2 : songuyen;
  print('Gia tri so nguyen 3 : $songuyen3');
  Nguoi n1 = new Nguoi("Truong", 22);
  print("Ten : ${n1.name}, tuoi : ${n1.age}");
}
