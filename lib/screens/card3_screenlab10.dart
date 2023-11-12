import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';


class CardScreen3 extends StatelessWidget {
   
  const CardScreen3({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card Widget"),
      ),
      body: ListView(
        children:[
          const CardWidget(),
          CardImageWidgets(),
          CardImageWidgets(),
          CardImageWidgets(),
        ],
      )
    );
  }
}