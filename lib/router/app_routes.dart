
import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes{
  static const initialRoute = 'home';

  static final menuOption = <MenuOption>[
    MenuOption(route: 'home', icon: Icons.check, nombre: 'Home Sreen', screen: const HomeScreen3()),
    MenuOption(route: 'listview1', icon: Icons.check, nombre: 'ListView1', screen: const HomeScreen()),
    MenuOption(route: 'listview2', icon: Icons.check, nombre: 'ListView2', screen: const ListView2Screen()),
    MenuOption(route: 'listview3', icon: Icons.check, nombre: 'ListView3', screen: const MyStatefulWidget()),
    MenuOption(route: 'card', icon: Icons.check, nombre: 'Card Sreen', screen: const CardScreen()),
    MenuOption(route: 'card 2', icon: Icons.check, nombre: 'Card Sreen 2', screen: const CardScreen2()),
    MenuOption(route: 'card 3', icon: Icons.check, nombre: 'Card Sreen 3', screen: const CardScreen3()),
    MenuOption(route: 'alert', icon: Icons.check, nombre: 'Alert Screen', screen: const AlertScreen()),
    MenuOption(route: 'popup', icon: Icons.check, nombre: 'PopUpView', screen: const PopUpScreen()),
    MenuOption(route: 'avatarscreen', icon: Icons.check, nombre: 'Avatar Screen', screen: const AvatarScreen()),
  ];
 
  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for(final options in menuOption){
      appRoutes.addAll({options.route:(BuildContext context) => options.screen});
    }
    return appRoutes;
  }

  

  static Route<dynamic> onGenerateRoute(RouteSettings settings){
    return MaterialPageRoute(builder:(context) => const AlertScreen(),);
  }
}
/*
  static Map<String, Widget Function(BuildContext)> routes = {
    'listview1':(BuildContext context) => const HomeScreen(),
    'listview2':(BuildContext context) => const ListView2Screen(),
    'listview3':(BuildContext context) => const MyStatefulWidget(),
    'card':(BuildContext context) => const CardScreen(),
    'alert':(BuildContext context) => const AlertScreen(),
    'home':(BuildContext context) => const HomeScreen3(),
    'popup':(BuildContext context) => const PopUpScreen(),

  };
  */