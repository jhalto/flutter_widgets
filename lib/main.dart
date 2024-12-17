import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/about_dialog.dart';
import 'package:flutter_widgets/widgets/about_list_tile.dart';
import 'package:flutter_widgets/widgets/page_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'sfdgghh',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: PageViewDemo(),
    );
  }
}
