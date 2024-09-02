import 'package:flutter/material.dart';

class example_image extends StatelessWidget {
  const example_image({super.key});

  @override
  Widget build(BuildContext context) {
    const String urlImage = 
       'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwcSY_i6dytjphtxGPbclQOvmwULrHln0a3Q&s';
    return Scaffold(
      appBar: AppBar(
        title: const Text('widget imagen'),
        centerTitle: true,
      ),
    body: const Center(
      child: Image(
        image: NetworkImage(urlImage),
        height: 40,
        ),
      ),
    );
   }
}