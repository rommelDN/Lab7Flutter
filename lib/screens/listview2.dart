import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
   
   final opciones = const['Java','Python','Flutter','Ruby','JavaScript'];
   
  const ListView2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 150, 146, 255),
        title: const Align(
          alignment: Alignment.centerLeft, // Alinea el título a la derecha
          child: Text("ListView2Screen"),
        ),
        elevation: 10,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(Icons.check), // Icono a la izquierda
          title: Text(opciones[index]), // Texto en el centro
          trailing: const Icon(Icons.arrow_forward, color: Colors.deepPurpleAccent,), // Icono a la derecha
          onTap: () {
            final opt = opciones[index];
            print(opt);
          },
        ),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: opciones.length,
      )
      );
  }
}