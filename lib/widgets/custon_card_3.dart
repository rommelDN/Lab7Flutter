import 'package:flutter/material.dart';

class CardWidget2 extends StatelessWidget {
  const CardWidget2({
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
                leading: Icon(Icons.car_crash),
                title: Text("Titulo de la Tarjeta"),
                subtitle: Text("Este es un subtitulo para la tarjeta creada",maxLines: 2,),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
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
