import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  final opciones = const['Java','Python','Flutter','Ruby','JavaScript'];
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView1"),
        elevation: 10,
      ),
      body: ListView(
        children: 
        opciones.map((e) {
          return ListTile(
            leading: const Icon(Icons.check),
            title: Text(e),
            trailing: const Icon(Icons.arrow_forward),
          );
        }).toList(),
        /**
         * ...opciones.map((e)=> ListTile(
         *  leading: Icon(Icons.check)
         *  title: Text(e)
         *  trailing: Icon(Icons.abc)
         * ))
         */
        
      )
      );
  }
}