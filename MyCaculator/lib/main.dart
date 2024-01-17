import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyCaculator(),
    );
  }
}
//Activity : man hinh
class MyCaculator extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyCaculatorState();
  }

}

//Lop quan ly trang thai cua man hinh chinh
class MyCaculatorState extends State<MyCaculator>{
  TextEditingController num1Control = TextEditingController(); // Text 1
  TextEditingController num2Control = TextEditingController(); // Text 2
  String sign = '+';
  String kq = '';
  //Ham Tinh Tong va cap nhat trang thai
  void caculator(){
    double num1 = double.tryParse(num1Control.text) ?? -999.99;
    double num2 = double.tryParse(num2Control.text) ?? -999.99;
    if(num1 != -999.99 && num2 != -999.99){
      double num = 0;
      switch(sign){
        case "+" :{
          num = num1 + num2;
          break;
        }
        case "-" :{
          num = num1 - num2;
          break;
        }
        case "*" :{
          num = num1 * num2;
          break;
        }
        case "/" :{
          num = num1 / num2;
          break;
        }
      }
      //Cap nhat trang thai
      setState(() {
        kq = 'Ket qua : $num';
      });
    }else{
      setState(() {
        kq = 'Nhập sai định dạng dữ liệu !';
      });
    }

  }
  void setSign(String value){
    sign = value;
    setState((){
      sign = value;
    });
  }
  //Giao dien cua activity
  @override
  Widget build(BuildContext context) {
    //Tra ve 1 man hinh
    return Scaffold(
      appBar: AppBar(
        title : Text("Ứng dụng tính tổng 2024")
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Thanh phan chinh - text 1
            TextField(
              controller: num1Control,
              keyboardType: TextInputType.number, // Chi cho nhap so
              decoration: InputDecoration(labelText: 'Nhập số thứ nhất'), //Nhap so 1
            ),
            SizedBox(height: 10.0,), //Khoang cach giua 2 o nhap lieu
            //Thanh phan chinh - text 2
            TextField(
              controller: num2Control,
              keyboardType: TextInputType.number, // Chi cho nhap so
              decoration: InputDecoration(labelText: 'Nhập số thứ hai'), //Nhap so 2
            ),
            SizedBox(height: 10.0,), //Khoang cach giua 2 o nhap lieu
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () => setSign("+"),
                    child: Text('+')
                ),
                SizedBox(width: 5,),
                ElevatedButton(
                    onPressed: () => setSign("-"),
                    child: Text('-')
                ),
                SizedBox(width: 5,),
                ElevatedButton(
                    onPressed: () => setSign("*"),
                    child: Text('*')
                ),
                SizedBox(width: 5,),
                ElevatedButton(
                    onPressed: () => setSign("/"),
                    child: Text('/')
                ),
              ]),
            SizedBox(height: 30.0,),
            ElevatedButton(
                onPressed: caculator,
                child: Text('Tính')
            ),
            Text('Bạn đang tính phép : $sign',
              style: TextStyle(height: 15.0, color: Colors.blue)
            ),
            SizedBox(height: 5.0,),
            Text(
              kq,
              style: TextStyle(fontSize: 18.0,color: Colors.red, height: 8.0)
            )
          ],
        )
      )
    );
  }

}
