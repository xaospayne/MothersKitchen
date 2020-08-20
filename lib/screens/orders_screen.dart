import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class OrdersScreen extends StatelessWidget {
  static const routeName = '/orders-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Orders',),),
        drawer: AppDrawer(),
      body: Center(
        child: Text('No Orders Here'),
      ),
    );
  }
}
