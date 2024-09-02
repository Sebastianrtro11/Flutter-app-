import 'package:flutter/material.dart';

class example_text extends StatelessWidget {
  const example_text({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black26),
        useMaterial3: true, 
      ),
      home: const Scaffold(
        body: Text('hola'),
      )
    );
  }
}