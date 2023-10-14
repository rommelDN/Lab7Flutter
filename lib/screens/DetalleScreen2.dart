import 'package:flutter/material.dart';

class DetalleScreen2 extends StatelessWidget {
  final String opcion;

  DetalleScreen2(this.opcion, {super.key});

  // Estructura de datos para almacenar los detalles de las opciones
  final Map<String, String> detallesOpciones = {
    'Java': 'Detalles sobre Java usando Map',
    'Python': 'Detalles sobre Python usando Map',
    'Flutter': 'Detalles sobre Flutter usando Map',
    'Ruby': 'Detalles sobre Ruby usando Map',
    'JavaScript': 'Detalles sobre JavaScript usando Map',
    // Agregar más opciones y detalles aquí
  };

  @override
  Widget build(BuildContext context) {
    final detalle = detallesOpciones[opcion] ?? 'Opción no reconocida';

    return Scaffold(
      appBar: AppBar(
        title: Text(opcion),
      ),
      body: Center(
        child: Text(detalle),
      ),
    );
  }
}
