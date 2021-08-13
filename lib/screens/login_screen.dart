import 'package:flutter/material.dart';
import 'package:m_home/providers/data.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  static String routeName = 'LoginScreen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
   String email = '';
   String password = '';
  bool showSpinner = false;
  void updateUi () => setState((){}) ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
        // ModalProgressHUD(
        // inAsyncCall: showSpinner,
        // child:
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // Flexible(
              //   child: Hero(
              //     tag: 'logo',
              //     child: Container(
              //       height: 200.0,
              //       child: Image.asset('images/logo.png'),
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 48.0,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  email = value;
                },
                decoration: kTextFieldDecoration.copyWith(
                  labelText: 'Enter your email',
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                obscureText: true,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  password = value;
                },
                decoration: kTextFieldDecoration.copyWith(
                  labelText: 'Enter your password.',
                ),
              ),
              SizedBox(
                height: 24.0,
              ),
              RoundedButton(
                color: Colors.lightBlueAccent,
                myText: 'Log In',
                onPress: ()  {
                  print('-------=======$password');

                  Provider.of<Data>(context, listen: false).verifyUser(email, password);
                  if(Provider.of<Data>(context, listen: false).enable) {
                    Navigator.pushNamed(context, '/');
                  }
                  // showSpinner = true;
                  // updateUi ();
                  // setState(() {
                  //   showSpinner = true;
                  // });
                  // try {
                  //   UserCredential userCredential =
                  //   await FirebaseAuth.instance.signInWithEmailAndPassword(
                  //     email: email,
                  //     password: password,
                  //   );
                  //   if (userCredential != null) {
                  //     showSpinner = false;
                  //     updateUi ();
                  //     // setState(() {
                  //     //   showSpinner = false;
                  //     // });
                  //     Navigator.pushNamed(context, '/');
                  //   }
                  //
                  // } on FirebaseAuthException catch (e) {
                  //   if (e.code == 'user-not-found') {
                  //     print('No user found for that email.');
                  //   } else if (e.code == 'wrong-password') {
                  //     print('Wrong password provided for that user.');
                  //   }
                  // }
                },
              ),
            ],
          ),
        ),
      //),
    );
  }
}

const kTextFieldDecoration = InputDecoration(
  labelText: 'Enter your email111111111111111',
  contentPadding:
  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide:
    BorderSide(color: Colors.lightBlueAccent, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide:
    BorderSide(color: Colors.lightBlueAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);

class RoundedButton extends StatelessWidget {
  final String myText;
  final Color color;
  final VoidCallback  onPress;
  RoundedButton ({required this.myText,required this.color,required this.onPress,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        //color: Colors.lightBlueAccent,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPress,
          //     //() {
          //   //Navigator.pushNamed(context, LoginScreen.id);
          // //},
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            //'Log In',
            myText,
          ),
        ),
      ),
    );
  }
}
