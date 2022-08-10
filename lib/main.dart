import 'package:flutter/material.dart';
import 'package:waste/homepage.dart';
import 'package:waste/note_list.dart';
import 'package:waste/signuppage.dart';
import './loginpage.dart';
import 'cartpage.dart';
import 'package:waste/MainPage.dart';
import 'package:waste/settings_screen.dart';
import 'package:waste/ProfilePage.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:waste/cartmodel.dart';
void main() {
  runApp(MyApp(
    model: CartModel(),
  ));
}

class MyApp extends StatelessWidget {
  final CartModel model;

  const MyApp({Key key, @required this.model}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScopedModel<CartModel>(
        model: model,
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      routes: {
        '/signup': (context) => SignupPage(),
        '/homepage': (context) => HomePage(),
        '/login': (contest) => LoginPage(),
          '/cart': (context) => CartPage(),
          '/home': (context) => MainPage(),
        '/notes': (context) => NoteList(),
          '/settings': (context) => SettingsScreen(),
          '/profilepage': (context) => ProfilePage(),
      },
    ),
    );
  }
}
