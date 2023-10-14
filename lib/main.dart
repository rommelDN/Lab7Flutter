//import 'package:fl_components/screens/listview1.dart';
//import 'package:fl_components/screens/listview2.dart';
import 'package:fl_components/screens/listview3.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: MyStatefulWidget(),
      
    );
  }
}

