import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My app', // used by the OS task switcher
    ),
  );
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MyAppState();
  }
}

class MyAppState extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyAppState> {
  var kq = "";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: SafeArea(
        child: Container(
            alignment: Alignment.center,
            width: 390,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/Casio Solar Wallet Calculator With 8-digit Display (blue) - Casio Solar Wallet Calculator With 8-digit Display (blue).jpeg',
                  width: 120,
                ),
                SizedBox(
                  height: 40,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Nhap so A",
                  ),
                ),
                SizedBox(
                  height: 40,
                ),

                TextField(
                  decoration: InputDecoration(
                    labelText: "Nhap so B",
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                builtButtonLayout(),

              ],
            )),
      ),
    );
  }
}

Widget builtButtonLayout() {
  var kq = "";
  final controllerA = TextEditingController();
  final controllerB = TextEditingController();


  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'Ket qua: $kq',
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),

      SizedBox(
        height: 40,
      ),
      ElevatedButton(
          onPressed: () {

             {
              var numA = double.tryParse(controllerA.text);
              var numB = double.tryParse(controllerB.text);
              if (numA == null || numB == null) {
                kq = 'Moi ban nhap gia tri';
              } else {
                  kq = '${numA + numB}';
              }
            }
          },

          child: Text('+')),
      SizedBox(
        width: 10,
      ),

      ElevatedButton(
          onPressed: () {
             {
              var numA = double.tryParse(controllerA.text);
              var numB = double.tryParse(controllerB.text);
              if (numA == null || numB == null) {
                kq = 'Ban chua nhap gia tri dung';
              } else {
                kq = '${numA - numB}';
              }
            }
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.red,
          ),
          child: Text('-')),

      SizedBox(
        width: 10,
      ),

      ElevatedButton(
          onPressed: () {
             {
              var numA = double.tryParse(controllerA.text);
              var numB = double.tryParse(controllerB.text);
              if (numA == null || numB == null) {
                kq = 'bb';
              } else {
                kq = '${numA * numB}';
              }
            }
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.green,
          ),
          child: Text('x')),
      SizedBox(
        width: 10,
      ),

      ElevatedButton(
          onPressed: () {
             {
              var numA = double.tryParse(controllerA.text);
              var numB = double.tryParse(controllerB.text);
              if (numA == null || numB == null) {
                kq = 'Ban chua nhap dung gia tri!';
              } else {
                if (numB == 0) {
                  kq = 'Khong the chia cho so 0';
                } else {
                  kq = '${numA / numB}';
                }
              }
            }
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.yellow,
          ),
          child: Text(':')),
    ],
  );
}