import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:store_app/views/view.dart';

void main() {
  runApp(const MyApp(),);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Tasbeeh Counter',
      debugShowCheckedModeBanner: false,
      home: TasbeehView(),
    );
  }
}
