import 'package:flutter/material.dart';
import 'package:step2/pages/new_member.dart';
import 'package:step2/pages/page_join.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: PageJoin(),
    );
  }
}
