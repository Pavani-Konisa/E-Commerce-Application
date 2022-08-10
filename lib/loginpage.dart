import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email;
  String _password;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
     backgroundColor: Colors.white,
        body: Center(
          child: Container(
              padding: EdgeInsets.all(25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Online Market',
                    style: TextStyle(fontFamily: 'JosefinSans',
                      fontSize: 35,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 30.0),
//                  Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRspjc6CDsELEFJ4rbDd65CjsEyYEJuUQ9D6w&usqp=CAU'),

                 //Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTM2ZrW5kyxJ3RaixDg0-xkKS9ROxt7bDS77g&usqp=CAU'),
                  SizedBox(
                      height: 55.0,
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(18.0),
                      ),
                        prefixIcon: Icon(Icons.mail_outline),
                          hintText: 'Enter Email',
                        hintStyle: TextStyle(
                          fontFamily: 'JosefinSans',
                          fontSize: 20,
                          color: Colors.black,
                        )
                      ),
                      onChanged: (value) {
                        setState(() {
                          _email = value;
                        });
                      })),
                  SizedBox(height: 10.0),
                  SizedBox(
                      height: 55.0,
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(18.0),
                      ),
                        prefixIcon: Icon(Icons.remove_red_eye),
                        hintText: 'Enter Password',
                        hintStyle: TextStyle(
                          fontFamily: 'JosefinSans',
                          fontSize: 20,
                          color: Colors.black,
                        )
                    ),
                    onChanged: (value) {
                      setState(() {
                        _password = value;
                      });
                    },
                    obscureText: true,
                  ),
                  ),
                  SizedBox(height: 30.0),
                  SizedBox(height: 55.0,
                  width: 300.0,
                  child: RaisedButton(
                    child: Text('Login',
                      style: TextStyle(
                        fontFamily: 'JosefinSans',
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    color: Colors.grey,
                    textColor: Colors.white,
                    elevation: 7.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.grey)
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed('/homepage');
                    },
                  ),
                  ),
                  SizedBox(height: 10.0),
                  Text('Don\'t have an account?'),
                  SizedBox(height: 10.0),
                  SizedBox(height: 55.0,
                    width: 300.0,
                    child: RaisedButton(
                      child: Text('Sign up',
                        style: TextStyle(
                          fontFamily: 'JosefinSans',
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      color: Colors.white,
                      textColor: Colors.white,
                      elevation: 7.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.grey)
                      ),
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed('/signup');
                      },
                    ),
                  ),
                //  SizedBox(height: 30.0),
                ],
              )),
        ));
  }
}