import 'package:fl_components/router/app_routes.dart';
import 'package:flutter/material.dart'; // Asegúrate de importar las clases necesarias.

class HomeScreen3 extends StatelessWidget {
  const HomeScreen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: const Text('Componentes de Flutter'),
        
      ),
      body: ListView.builder(
        itemCount: AppRoutes.menuOption.length,
        
        itemBuilder: (context, index) {
          final menuOption = AppRoutes.menuOption[index];
          return ListTile(
            leading: Icon(menuOption.icon),
            title: Text(menuOption.nombre),
            onTap: () {
              Navigator.pushNamed(context, menuOption.route);
            },
          );
        },
      ),
    );
  }
}
