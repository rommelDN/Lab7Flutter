import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class PopUpScreen extends StatelessWidget {
  const PopUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de Flutter'),
        elevation: 0,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(Icons.arrow_back_ios,color: AppTheme.primary,),
          title: const Text('Item'),
          trailing: PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return <PopupMenuEntry>[
                const PopupMenuItem(
                  value: 'Option 1',
                  child: Text('Option 1'),
                ),
                const PopupMenuItem(
                  value: 'Option 2',
                  child: Text('Option 2'),
                ),
                const PopupMenuItem(
                  value: 'Option 3',
                  child: Text('Option 3'),
                ),
              ];
            },
            onSelected: (value) {
              // Aquí puedes manejar la selección de la opción
              if (value == 'Option 1') {
                print(value);
              } else if (value == 'Option 2') {
                // Manejar la lógica de Option 2
              } else if (value == 'Option 3') {
                // Manejar la lógica de Option 3
              }
            },
          ),
          onLongPress: () {
            // Esto se ejecuta cuando mantienes presionado el ListTile
            
          },
        ),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: 10,
      ),
    );
  }
}
