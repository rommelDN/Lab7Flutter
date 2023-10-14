import 'package:flutter/material.dart';

class DetalleScreen extends StatelessWidget {
  final String opcion;

  DetalleScreen(this.opcion);

  @override
  Widget build(BuildContext context) {
    Widget contenido;

    // Utiliza un switch para determinar el contenido en función de la opción
    switch (opcion) {
      case 'Java':
        contenido = const Text('Detalles sobre Java');
        break;
      case 'Python':
        contenido = const Text('Detalles sobre Python');
        break;
      case 'Flutter':
        contenido = const Text('Detalles sobre Flutter');
        break;
      case 'Ruby':
        contenido = const Text('Detalles sobre Ruby');
        break;
      case 'JavaScript':
        contenido = const Text('Detalles sobre JavaScript');
        break;
      default:
        contenido = const Text('Opción no reconocida');
        break;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(opcion),
      ),
      body: Center(
        child: contenido, // Muestra el contenido basado en la opción
      ),
    );
  }
}
