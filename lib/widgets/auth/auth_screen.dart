  import 'package:flutter/material.dart';
  import 'package:flutter/services.dart';
  import 'package:motherskitchen/widgets/auth/loginform.dart';
  import 'package:firebase_auth/firebase_auth.dart';
  import 'package:cloud_firestore/cloud_firestore.dart';

  class AuthScreen extends StatefulWidget {
    static const routeName = '/auth-screen';
  @override
  _AuthScreenState createState() => _AuthScreenState();
  }

  class _AuthScreenState extends State<AuthScreen> {
  final _auth = FirebaseAuth.instance;
  var _isLoading = false;

  void _submitLoginForm(
      String email,
      String password,
      String mobile,
      bool  isLogin,
      BuildContext ctx,
      ) async {
    AuthResult authResult;
    try {
      setState(() {
        _isLoading = true;
      });
      if (isLogin) {
        authResult = await _auth.signInWithEmailAndPassword(
            email: email,
            password: password,
        );
      } else {
        authResult = await _auth.createUserWithEmailAndPassword(
            email: email,
            password: password,
        );
       await Firestore.instance
           .collection('users')
           .document(authResult.user.uid)
           .setData({
         'mobile': mobile,
         'email': email,
       });
      }
    } on  PlatformException catch (err) {
      var message = 'An Error Occured';
       if (err.message != null) {
        message = err.message;
      }
      Scaffold.of(ctx).showSnackBar(SnackBar(
        content: Text(message),
        backgroundColor: Colors.orange,)
      );
      setState(() {
        _isLoading = false;
      });
    } catch (err){
      print(err);
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginForm(
        _submitLoginForm,
        _isLoading,
      ),
    );
  }
}
