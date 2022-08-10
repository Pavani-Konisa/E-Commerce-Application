import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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
                  //SizedBox(height: 10.0),
               //   Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSG1FdDPhhrF2kDmAnJwzREYQzNBixCvgV3Uw&usqp=CAU'),

                 // Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSed2x1CHERHs900wq0jCs1YiI3JvGgU-d7jA&usqp=CAU'),
                  Text('Online Market',
                    style: TextStyle(
                      fontFamily: 'JosefinSans',
                      fontSize: 30,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 30.0),
                  SizedBox(height: 50.0,
                child: TextField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          prefixIcon: Icon(Icons.account_circle),
                          hintText: 'User Name',
                          hintStyle: TextStyle(
                            fontFamily: 'JosefinSans',
                            fontSize: 15,
                            color: Colors.black,
                          ),
                      ),
                      onChanged: (value) {
                        setState(() {
                          _email = value;
                        });
                      }),
                  ),
                SizedBox(height: 5.0),
                  SizedBox(
                    height: 50.0,
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
                          hintText: 'Email',
                        hintStyle: TextStyle(
                          fontFamily: 'JosefinSans',
                          fontSize: 15,
                          color: Colors.black,
                        ),),
                      onChanged: (value) {
                        setState(() {
                          _email = value;
                        });
                      }),
                  ),
                  SizedBox(height: 5.0),
                  SizedBox(height: 50.0,
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
                          hintText: 'Passsword',
                          hintStyle: TextStyle(
                            fontFamily: 'JosefinSans',
                            fontSize: 15,
                            color: Colors.black,
                          )
                      ),
                      onChanged: (value) {
                        setState(() {
                          _email = value;
                        });
                      }),
                  ),
                  SizedBox(height: 5.0),
                  SizedBox(height: 50.0,
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
                          hintText: 'Confirm Password',
                        hintStyle: TextStyle(
                          fontFamily: 'JosefinSans',
                          fontSize: 15,
                          color: Colors.black,
                        ),),
                      onChanged: (value) {
                        setState(() {
                          _password = value;
                        });
                      }),
                  ),
                  SizedBox(height: 55.0),
                  SizedBox(height: 50.0,
                  width: 300.0,
                  child: RaisedButton(
                    child: Text('Sign Up',
                      style: TextStyle(
                        fontFamily: 'JosefinSans',
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    color: Colors.grey,
                    textColor: Colors.black,
                    elevation: 7.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.grey)
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/homepage');
                    },
                  ),
                  ),
                  SizedBox(height: 5.0),
                  Text('Already have an account?'),
                  SizedBox(height: 5.0),
                  SizedBox(height: 50.0,
                  width: 300.0,
                  child: RaisedButton(
                    child: Text('Login',
                      style: TextStyle(
                        fontFamily: 'JosefinSans',
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    color: Colors.white,
                    textColor: Colors.black,
                    elevation: 20.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.grey)
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                  ),
                  ),
                ],
              )),
        ));
  }
}