
import 'package:flutter/material.dart';
import 'package:waste/cartpage.dart';
import 'package:waste/MainPage.dart';
import 'package:waste/settings_screen.dart';
import 'package:waste/ProfilePage.dart';
import 'package:waste/note_list.dart';


class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shopping Cart',
        home: DefaultTabController(
          length: 5,
          child: Scaffold(
            body: TabBarView(children: [
              MainPage(),
              CartPage(),
              NoteList(),
              ProfilePage(),
              SettingsScreen(),
            ]),
            bottomNavigationBar: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                ),
                Tab(
                  icon: Icon(Icons.shopping_cart),
                ),
                Tab(
                  icon: Icon(Icons.add_box),
                ),
                Tab(
                  icon: Icon(Icons.account_box),
                ),
                Tab(
                  icon: Icon(Icons.settings),
                ),
              ],
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorPadding: EdgeInsets.all(5.0),
              indicatorColor: Colors.red,
            ),
            backgroundColor: Colors.grey,
          ),
        ),
        routes: {
          '/cart': (context) => CartPage(),
          '/home': (context) => MainPage(),
          '/settings': (context) => SettingsScreen(),
          '/profilepage': (context) => ProfilePage(),
          '/notes': (context) => NoteList(),
         // '/Search': (context) => SearchList(),
        },
      );
  }
}