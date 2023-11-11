import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  
  const CardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 15,
        color: Colors.white,
        shadowColor: Colors.black12,
          child: Column(
           children: [
              const ListTile(
                leading: Icon(Icons.anchor),
                title: Text("Soy un Item dentro de una Card"),
                subtitle: Text("Este es un subtitulo"),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: (){},
                      
                      child: const Text("Cancelar"),
                      ),
                    TextButton(
                      
                      onPressed: (){}, 
                      child: const Text("OK")
                      ),
                  ],
                ),
              )
            ],
          ),
        ),
    );
  }
}