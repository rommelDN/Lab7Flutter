import 'package:flutter/material.dart';

class CardWidget4 extends StatelessWidget {
  const CardWidget4({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 15,
        color: Colors.white,
        shadowColor: Colors.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0), // Ajusta el valor según sea necesario
        ),
        child: SizedBox(
          child: Column(
            children: [
              const ListTile(
                leading: Icon(Icons.car_crash,size: 60,color: Colors.red,),
                title: Text("Titulo de la Tarjeta"),
                subtitle: Text("Este es un subtitulo para la tarjeta creada Este es un subtitulo para la tarjeta creada Este es un subtitulo para la tarjeta creada Este es un subtitulo para la tarjeta creada",maxLines: 3,),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text("Cancelar"),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text("OK"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
