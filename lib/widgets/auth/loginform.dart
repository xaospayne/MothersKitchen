  import 'package:flutter/material.dart';
  import 'package:flutter/services.dart';
 // import 'package:video_player/video_player.dart';

  class LoginForm extends StatefulWidget {
    LoginForm(this.submitFn, this.isLoading);

    final bool isLoading;
    final void Function(
        String email,
        String password,
        String mobile,
        bool  isLogin,
        BuildContext ctx,
        ) submitFn;

    @override
  _LoginFormState createState() => _LoginFormState();
  }

  class _LoginFormState extends State<LoginForm> {
    //VideoPlayerController _controller;

  final _formKey = GlobalKey<FormState>();
  var _isLogin = true;
  String _userEmail = '';
  String _userPassword = '';
  String _userMobile = '';

  void _trySubmit() {
    final isValid = _formKey.currentState.validate();
    FocusScope.of(context).unfocus();
    if (isValid) {
      _formKey.currentState.save();
      widget.submitFn(
        _userEmail.trim(),
        _userPassword.trim(),
        _userMobile.trim(),
        _isLogin,
        context
      );
    }
  }
  /*void initState() {
      super.initState();
      _controller = VideoPlayerController.asset("assets/videos/bg1.m4v")
        ..initialize().then((_) {
          _controller.play();
          _controller.setLooping(true);
          setState(() {});
        });
    }

    @override
    void dispose() {
      super.dispose();
      if (_controller != null) {
        _controller.dispose();
        _controller = null;
      }
    }
*/
  Widget _buildEmailTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          height: 60.0,
          child: TextFormField(
            key: ValueKey('email'),
            keyboardType: TextInputType.emailAddress,
            validator: (value) { if (value.isEmpty || !value.contains('@'))  {return
              'Please Enter A Valid Email';} return null;},
            style: TextStyle(color: Colors.white, fontFamily: 'OpenSans',),
            decoration: InputDecoration(
              fillColor: Colors.white,
              labelText: 'Email',
              hintText: 'username@xyz.com',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
                borderSide: BorderSide(color:Colors.orange,width: 2.0,),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
                borderSide: BorderSide(color:Colors.orange,width: 2.0,),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
                borderSide: BorderSide(color:Colors.red,width: 2.0,),
              ),
            ),
             onSaved:(value){_userEmail = value;},
        ),
        ),
      ],
    );
  }
  Widget _buildMobileTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          height: 60.0,
          child: TextFormField(
            key: ValueKey('mobile'),
            validator: (value) { if (value.isEmpty || !value.contains('91') || value.length > 12  || value.length < 12)  {
              return 'Please enter a valid mobile number with country code';} return null;},
            keyboardType: TextInputType.number,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              fillColor: Colors.white,
              labelText: 'Mobile',
              hintText: '91-xxxx-xxx-xxx',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
                borderSide: BorderSide(color:Colors.orange,width: 2.0,),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
                borderSide: BorderSide(color:Colors.orange,width: 2.0,),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
                borderSide: BorderSide(color:Colors.red,width: 2.0,),
              ),
            ),
            onSaved:(value){_userMobile = value;},
          ),
        ),
      ],
    );
  }
  Widget _buildPasswordTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          height: 60.0,
          child: TextFormField(
            key: ValueKey('password'),
            validator: (value) {if (value.isEmpty || value.length < 7) {
                return 'Please enter a valid 7 character password';} return null;},
            obscureText: true,
              style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              fillColor: Colors.white,
              labelText: 'Password',
              hintText: 'Password',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
                borderSide: BorderSide(color:Colors.orange,width: 2.0,),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
                borderSide: BorderSide(color:Colors.orange,width: 2.0,),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
                borderSide: BorderSide(color:Colors.red,width: 2.0,),
              ),
            ),
            onSaved:(value){
              _userPassword = value;
            },
          ),
        ),
      ],
    );
  }
  Widget _buildLoginBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: RaisedButton(
        onPressed: _trySubmit,
        elevation: 5.0,
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.white,
        child: Text(_isLogin ? 'Login In' : 'Sign Up',
          style: TextStyle(
            color: Colors.orange,
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }
  Widget _buildSignUpWithText() {
    return Column(
      children: <Widget>[
        FlatButton(
          textColor: Theme.of(context).primaryColor,
          child: Text(_isLogin ? 'Sign Up With An Email Account' : 'I Already Have An Account',
          style: TextStyle(
            color: Colors.orange,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          ),
          onPressed: () {
           setState(() {
             _isLogin = !_isLogin;
           });

          },
          ),
        SizedBox(height: 20.0),
        Text(
          '- OR -',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),

      ],
    );
  }
  Widget _buildSocialBtn(Function onTap, AssetImage logo) {
    return GestureDetector(
      onTap: (){
        setState(() {
        });
        _isLogin = !_isLogin;
      },
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 2),
              blurRadius: 6.0,
            ),
          ],
          image: DecorationImage(
            image: logo,
          ),
        ),
      ),
    );
  }
  Widget _buildSocialBtnRow() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildSocialBtn(
                () => print('Sign Up with Google'),
            AssetImage(
              'assets/logos/google.jpg',
            ),
          ),
        ],
      ),
    );
  }
  Widget _buildHomeChefSignUp() {
    return GestureDetector(onTap: () => print('Chef\'s Sign Up Process'),
      child: RichText(
          text: TextSpan(
              children: [
                TextSpan(text: 'Love to Cooking ? ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400,
                  ),),
                TextSpan(text: 'Join Us',
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400,
                  ),),
      ])),
    );
  }

  @override
  Widget build(BuildContext context) {
    //Keeps Back Ground Fixed even with Keyboard Opened
    return Scaffold(resizeToAvoidBottomPadding: false,
      //Top Status Bar Overlay Dark or Light
      body: AnnotatedRegion<SystemUiOverlayStyle>(value: SystemUiOverlayStyle.light,
        child: GestureDetector(onTap: ()=>FocusScope.of(context).unfocus(),
          //Main Tree holding All the necessary Containers
          child: Stack(children: <Widget>[
            //Holds the background Video
/*
            Container(
              height: double.infinity,
              width:  double.infinity,
              child:  VideoPlayer(_controller),),
*/
            //Creates a black overlay to the background
            Container(
              height: double.infinity,
              color:  Colors.black.withAlpha(120),),
            //Hold the Login Form
            Container(
              height:    double.infinity,
              child:     SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 100.0,),
                child:   Form(
                  key:   _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                    Text(
                      'Mother\'s Kitchen',
                      style: TextStyle(
                        color: Colors.orange,
                        fontFamily: 'MomsFonts',
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,)
                      ,),
                    SizedBox(height: 10.0),
                    Text(
                      'Empowering  Mother\'s PASSIONATE about cooking',
                      style: TextStyle(
                        color: Colors.orange,
                        fontFamily: 'OpenSans',
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,),),
                    SizedBox(height: 30.0),
                    _buildEmailTF(),
                    SizedBox(height: 10.0,),
                    if(!_isLogin)
                      _buildMobileTF(),
                    _buildPasswordTF(),
                    if(widget.isLoading)
                      Column(
                        children: <Widget>[
                          SizedBox(height: 10.0),
                          CircularProgressIndicator(),
                        ],
                      ),
                    if(!widget.isLoading)
                    _buildLoginBtn(),
                    _buildSignUpWithText(),
                    _buildSocialBtnRow(),
                      _buildHomeChefSignUp(),
                    ],),
                ),),
            ),],
          ),),
      ),);
  }
  }