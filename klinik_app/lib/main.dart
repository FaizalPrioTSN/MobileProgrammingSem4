import 'package:flutter/material.dart';
import 'package:klinik_app/ui/beranda.dart';
import '/ui/poli_page.dart';
import '/ui/pegawai_page.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Klinik APP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(iconTheme: IconThemeData(color: Color.fromARGB(255, 255, 255, 255)),
        color: Colors.blue,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: PoliPage(),
        );
  }
}
