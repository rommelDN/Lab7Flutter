import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';


class CardScreen2 extends StatelessWidget {
   
  const CardScreen2({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card Widget"),
      ),
      body: ListView(
        children: const[
          CardWidget2() ,
          CardWidget3() ,
          CardWidget4() ,
        ],
      )
    );
  }
}