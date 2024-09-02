import 'package:flutter/material.dart';

class example_appbar extends StatelessWidget {
  const example_appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.account_balance_outlined),
        title: const Text('appbar'),
        centerTitle: true,
        backgroundColor: Colors.cyan,
        actions:const[
        ],
      ),
    body:const Center(
      child: Text('barra de navegacion ', style: TextStyle(),),
        ),
      );
  }
}