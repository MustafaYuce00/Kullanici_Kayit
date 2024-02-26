

import 'package:flutter/material.dart';
import 'package:kullanici_kayit_uygulamasi/pages/Kullanici_kayit.dart';



void main() {
 
  runApp(const MyApp());
  @override
  void initState() {
    initState();
  }
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: KullaniciKayit(),
    );
  }
}
