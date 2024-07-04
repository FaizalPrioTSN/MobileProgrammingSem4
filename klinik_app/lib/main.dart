import 'package:flutter/material.dart';
import '/helpers/user_info.dart';
import '/ui/beranda.dart';
import '/ui/login.dart';
import '/ui/poli_page.dart';
import '/ui/pegawai_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    title: "Klinik APP",
    theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(iconTheme: IconThemeData(color: Color.fromARGB(255, 255, 255, 255)),
        color: Colors.black,
        ),
      ),
    debugShowCheckedModeBanner: false,
    home: Beranda(),
  ));
}
