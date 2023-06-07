
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:expenxers/utils/widget/bottomnavigationbar.dart';
import 'package:expenxers/Screens/add.dart';
import 'package:expenxers/Screens/wallet.dart';
//import 'package:managment/Screens/home.dart';
import 'package:expenxers/screens/home_profile_tab.dart';
import 'package:expenxers/screens/home_screen_tab.dart';
import 'package:expenxers/Screens/statistics.dart';


import 'data/model/add_date.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(AdddataAdapter());
  await Hive.openBox<Add_data>('data');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 /* @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainScreenHost(),
    );
  }*/
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: Bottom(),
    );
  }
}


