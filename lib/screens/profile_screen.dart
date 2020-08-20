import 'package:flutter/material.dart';
import 'package:motherskitchen/widgets/app_drawer.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
  static const routeName = '/profile-screen';
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' My Profile',),),
      drawer: AppDrawer(),
      body: Container(
        child: Form(
            child: Center(
              child: Text('Please Edit Your Profile'),
            )
            )),


    );
  }
}
