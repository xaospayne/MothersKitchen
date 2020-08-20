import 'package:flutter/material.dart';
import 'package:motherskitchen/screens/kitchens_screen.dart';
import '../widgets/app_drawer.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home-screen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home'),),
      drawer: AppDrawer(),
      body:KitchenScreen(),
    );
  }
}
