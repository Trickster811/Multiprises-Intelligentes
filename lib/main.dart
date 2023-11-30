import 'package:flutter/material.dart';
import 'package:multiprises_intelligentes/welcome_pages/appstart_page.dart';
import 'package:multiprises_intelligentes/welcome_pages/start_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prises Intelligentes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'SamsungOne',
        primarySwatch: Colors.red,
      ),
      home: AppStartScreen(),
    );
  }
}
