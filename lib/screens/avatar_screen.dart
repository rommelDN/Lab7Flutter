import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi Aplicación Flutter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.blue,
              ),
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset('assets/fotos-de-perfil-aesthetic.png'),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset('assets/fotos-de-perfil-aesthetic.png'),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset('assets/fotos-de-perfil-aesthetic.png'),
                  ),
                ],
              ),
            ),

            // Contenedor con lista vertical de nombre, apellido y correo
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Nombre: Nombre'),
                  Text('Apellido: Apellido'),
                  Text('Correo: correo@ejemplo.com'),
                ],
              ),
            ),
          ],
        ),
      ),
      // Contenedor con el logo superpuesto
      floatingActionButton: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: Image.asset('assets/fotos-de-perfil-aesthetic.png'),
            ),
          ),
        ],
      ),
    );
  }
}
