import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Simulación de datos de perfil de usuario
    String nombre = "Rommel";
    String apellido = "Hurtado";
    String cargo = "Desarrollador";

    return Scaffold(
      appBar: AppBar(
        title: const Text('PERFIL'),
      ),
      body: Container(
        color: Colors.white, // Color de fondo del cuerpo
        child: Center(
          child: Column(
            children: [
              // Primer contenedor para la imagen de usuario con separación en la parte superior
              Padding(
                padding: EdgeInsets.zero,
                child: Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60), // Redondear los bordes
                    ),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(60),
                        bottomRight: Radius.circular(60),
                      ),
                      child: Image.asset(
                        'assets/fotos-de-perfil-aesthetic.png', // Reemplaza con la ruta de tu imagen
                        fit: BoxFit.cover, // Hacer que la imagen ocupe todo el espacio del contenedor
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child:Container(
                          margin: const EdgeInsets.only(
                            bottom: 20,
                            left: 20),
                          child: Table(
                            children: const [
                              TableRow(
                                children: [
                                  TableCell(
                                    child: Text('Sueldo'),
                                  ),
                                  TableCell(
                                    child: Text('Edad'),
                                  ),
                                  TableCell(
                                    child: Text('Sexo'),
                                  ),
                                  TableCell(
                                    child: Text('Instituto'),
                                  ),
                                ],
                              ),
                              TableRow(
                                children: [
                                  TableCell(
                                    child: Text('1200'),
                                  ),
                                  TableCell(
                                    child: Text('20'),
                                  ),
                                  TableCell(
                                    child: Text('Masculino'),
                                  ),
                                  TableCell(
                                    child: Text('Tecsup'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      
                      ),

                      ListView(
                        shrinkWrap: true,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const CircleAvatar(
                                backgroundImage: AssetImage('assets/fotos-de-perfil-aesthetic.png'), // Reemplaza con la ruta de tu imagen
                                radius: 40, // Tamaño del avatar
                              ),
                              SizedBox(width: 20), // Espacio entre la imagen y el texto
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start, // Alineación izquierda
                                children: [
                                  Text(
                                    '$nombre $apellido',
                                    style: const TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                  Text(
                                    cargo,
                                    style: const TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                  const Text(
                                    'rhurtado@gmail.com',
                                    style:TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),

                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 10,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start, // Alinea verticalmente hacia arriba
                            children: [
                              const Row(
                                children: [
                                  Expanded(
                                    child: Row(

                                      children: [
                                        Text(
                                          'Farmacos del Norte',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 20,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 20,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 20,
                                        ),
                                        
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10), // Espacio entre la fila y el texto
                              Expanded(
                                child: ListView(
                                  children: const [
                                    Text(
                                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eget odio vitae justo interdum tincidunt. Suspendisse potenti. In volutpat euismod purus. Maecenas efficitur lectus et nunc luctus scelerisque. Nunc fringilla hendrerit justo, eu dignissim libero auctor id. Aenean convallis facilisis nunc ac facilisis. Donec sollicitudin tincidunt purus a iaculis. Proin et velit in elit cursus aliquet. Sed ac justo at erat tincidunt egestas. Nam sit amet egestas arcu. Nulla vel turpis in risus ultrices, nec bibendum lorem tempor. Nulla facilisi. Vestibulum sollicitudin dapibus enim, nec consectetur lectus posuere et.',
                                      style: TextStyle(
                                        fontSize: 14,
                                        
                                      ),
                                      maxLines: 4,
                                      
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
