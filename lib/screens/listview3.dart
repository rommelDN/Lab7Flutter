//import 'package:fl_components/screens/DetalleScreen.dart';
import 'package:fl_components/screens/DetalleScreen2.dart';
import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  
  const MyStatefulWidget({super.key});

  @override
  MyStatefulWidgetState createState() => MyStatefulWidgetState();
}

class MyStatefulWidgetState extends State<MyStatefulWidget> {
  
  final opciones = const['Java','Python','Flutter','Ruby','JavaScript'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 150, 146, 255),
        title: const Align(
          alignment: Alignment.centerLeft, // Alinea el título a la derecha
          child: Text("Rommel Hurtado"),
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
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DetalleScreen2(opt),
              ),
            );
          },
        ),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: opciones.length,
      )
      );
  }
}