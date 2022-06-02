import 'package:flutter/material.dart';
import 'package:flutter_temel_widget/dropdown_button_Kullanımı.dart';

void main() {
  debugPrint('Main Metodu çalıtşı');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint('MyApp çalıtşı');
    return MaterialApp(
        title: "My Counter App",
        theme: ThemeData(
            primarySwatch: Colors.purple,
            outlinedButtonTheme:
                OutlinedButtonThemeData(style: OutlinedButton.styleFrom()),
            textButtonTheme: TextButtonThemeData(
                style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue),
            )),
            textTheme: TextTheme(
                headline1:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold))),
        home: Scaffold(
          appBar: AppBar(title: Text("Buton Ornekleri")),
          body: DropDownButtonKullanimi(),
        ));
  }
}
