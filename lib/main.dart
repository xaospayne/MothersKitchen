import 'package:flutter/material.dart';
import 'package:flutter/services.dart' ;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:motherskitchen/providers/kitchen_n_meal_provider.dart';
import 'package:motherskitchen/screens/orders_screen.dart';
import 'package:motherskitchen/screens/profile_screen.dart';
import './widgets/auth/auth_screen.dart';
import 'screens/kitchen_meal_screen.dart';
import 'screens/home_screen.dart';
import 'screens/messages_screen.dart';
import 'package:provider/provider.dart';

void main() {runApp(MothersKitchen());}

class MothersKitchen extends StatefulWidget {
  @override
  _MothersKitchenState createState() => _MothersKitchenState();
}

class _MothersKitchenState extends State<MothersKitchen> {
  @override
  Widget build(BuildContext context) {
  SystemChrome.setPreferredOrientations([
  DeviceOrientation.portraitUp,]);
  return ChangeNotifierProvider(
   create: (ctx) => KitchensListProvider(),
   child: MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: 'MomsFonts',
      primarySwatch: Colors.orange,
      backgroundColor: Colors.deepOrangeAccent,
      accentColor: Colors.deepOrangeAccent,
      accentColorBrightness: Brightness.dark,
      buttonTheme: ButtonTheme.of(context).copyWith(
        buttonColor: Colors.white,
        textTheme: ButtonTextTheme.primary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular( 20),),),),
    home: StreamBuilder(
     stream: FirebaseAuth.instance.onAuthStateChanged,
     builder:(ctx, userSnapShot) {
     if (userSnapShot.hasData) {
     return HomeScreen();
     }
     return AuthScreen();}),
    routes:{
    OrdersScreen.routeName:(ctx)=>OrdersScreen(),
    MessagesScreen.routeName:(ctx)=>MessagesScreen(),
    HomeScreen.routeName:(ctx)=> HomeScreen(),
    KitchenMealScreen.routeName:(ctx)=> KitchenMealScreen(),
    ProfileScreen.routeName:(ctx)=> ProfileScreen(),
    AuthScreen.routeName:(ctx)=> AuthScreen(),
    },
    onUnknownRoute: (settings){return MaterialPageRoute(builder: (ctx) => HomeScreen(),);},
   ),
  );
 }
}