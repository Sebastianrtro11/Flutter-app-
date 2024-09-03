import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/example_Scaffold_AppBar_Center_Text.dart';
import 'package:flutter_application_1/components/example_appbar.dart';
import 'package:flutter_application_1/components/example_drawer.dart';
import 'package:flutter_application_1/components/example_funciona.dart';
import 'package:flutter_application_1/components/example_image.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan,),
        useMaterial3: true, 
      ),
      home: const ExampleFunciona()
    );
  }
}
