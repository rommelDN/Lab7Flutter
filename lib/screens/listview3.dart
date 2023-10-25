//import 'package:fl_components/screens/DetalleScreen.dart';
import 'package:fl_components/screens/DetalleScreen2.dart';
import 'package:fl_components/themes/app_theme.dart';
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
        title: const Align(
          alignment: Alignment.centerLeft, // Alinea el título a la derecha
          child: Text("Rommel Hurtado"),
        )
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(Icons.check), // Icono a la izquierda
          title: Text(opciones[index]), // Texto en el centro
          trailing: const Icon(Icons.arrow_forward, color: AppTheme.primary,), // Icono a la derecha
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