import 'package:flutter/material.dart';
import 'package:motherskitchen/widgets/app_drawer.dart';

class MessagesScreen extends StatelessWidget {
  static const routeName = '/messages-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      title: Text(' Messages',),
     ),
        drawer: AppDrawer(),
      body: Container(
        child: Form(
          child: Center(
            child: Text('No Messages Yet'),
          ),
    ),
    )
    );
  }
}
