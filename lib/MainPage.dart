import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:waste/cartmodel.dart';

class MainPage extends StatelessWidget {


  List<Product> _products = [
    Product(
        id: 1,
        title: "Tomatoes",
        price: 20.0,
        imgUrl:
        "https://www.harighotra.co.uk/images/Shutterstock/tomaotoes1_560x560.jpg",
        qty: 1),
    Product(
        id: 2,
        title: "Onions",
        price: 40.0,
        imgUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRwoIlYw4JJBRiReIRpNMlsB9H1LvGz0CiTLw&usqp=CAU",
        qty: 1),
    Product(
        id: 3,
        title: "Carrot",
        price: 20.0,
        imgUrl:
        "https://www.healthyfood.com/wp-content/uploads/2019/07/The-lost-plot-growing-carrots-iStock-471680420.jpg",
        qty: 1),
    Product(
        id: 4,
        title: "Beetroot",
        price: 40.0,
        imgUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTQxC7ZHjil5EskgThdCFkloaZdkqDKr7yKqw&usqp=CAU",
        qty: 1),
    Product(
        id: 5,
        title: "Potatoes",
        price: 25.0,
        imgUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRNUTz9SJBL9HOLEMnDZPVgQr8xhhCvLx14SQ&usqp=CAU",
        qty: 1),
    Product(
        id: 6,
        title: "Lady's Fingers",
        price: 25.0,
        imgUrl:
        "https://5.imimg.com/data5/PU/LG/MY-52406801/lady-finger-500x500.jpg",
        qty: 1),
    Product(
        id: 7,
        title: "Brinjals",
        price: 25.0,
        imgUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSgj_dYVv0RhKeKlRqQr5BTTd49W3Bvwv3nKg&usqp=CAU",
        qty: 1),
    Product(
        id: 8,
        title: "Green Chillies",
        price: 25.0,
        imgUrl:
        "https://img.freepik.com/free-photo/hot-green-chillies_19-115250.jpg?size=626&ext=jpg",
        qty: 1),
    Product(
        id: 9,
        title: "Lemons",
        price: 25.0,
        imgUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRq4gHhBnYlrhVswanubRMlrN7nvydoZfEZkQ&usqp=CAU",
        qty: 1),
    Product(
        id: 10,
        title: "Barbati",
        price: 25.0,
        imgUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRRB8xmRIrqgyI429yW9Rd6UHEvEnM3z2OVnw&usqp=CAU",
        qty: 1),
    Product(
        id: 11,
        title: "Cabbage",
        price: 25.0,
        imgUrl:
        "https://4.imimg.com/data4/XC/PG/MY-35144332/cabbage-500x500.jpg",
        qty: 1),
    Product(
        id: 12,
        title: "Cauli Flower",
        price: 25.0,
        imgUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSjp9jgJGH50t-y72PlThpd7OzTLnNMPpc69w&usqp=CAU",
        qty: 1),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Online Market',
        style: TextStyle(fontFamily: 'JosefinSans',
          fontSize: 25,
          color: Colors.black,
        ),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.black,
            onPressed: () => Navigator.pop(context),
    ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            color: Colors.black,
            onPressed: () => Navigator.pushNamed(context, '/cart'),
          ),
        ],
      ),
      body:

                GridView.builder(
                  padding: EdgeInsets.all(10.0),
                  itemCount: _products.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                      childAspectRatio: 1.0),
                  itemBuilder: (context, index) {
                    return ScopedModelDescendant<CartModel>(
                        builder: (context, child, model) {
                          return Card(
                            // margin: true,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              //color: Colors.indigo[100],
                              elevation: 10,
                              child: Column(children: <Widget>[
                                Image.network(
                                  _products[index].imgUrl,
                                  height: 80,
                                  width: 120,
                                ),
                                Text(
                                  _products[index].title,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("\$" + _products[index].price.toString()),
                                OutlineButton(
                                    child: Text(
                                      "Add",
                                      style: TextStyle(
                                        color: Colors.deepOrange,
                                      ),
                                    ),
                                    onPressed: () => model.addProduct(_products[index]))
                              ]));
                        });
                  },
                ),

      drawer: Drawer(

        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        elevation: 16.0,


        child: Column(
          // Important: Remove any padding from the ListView.
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Pavani"),
              accountEmail: Text("pavani@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("Pavani"),
              ),
            ),
            ListTile(
              title: Text('Home',
                style: TextStyle(fontFamily: 'JosefinSans',
                  fontSize: 20,
                  color: Colors.black,
                ),),
              leading: Icon(Icons.home),
              // Divider(height: 0.1,),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Cart',
                style: TextStyle(fontFamily: 'JosefinSans',
                  fontSize: 20,
                  color: Colors.black,
                ),),
              leading: Icon(Icons.shopping_cart),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pushNamed(context, '/cart');
              },
            ),
            ListTile(
              title: Text('Notes',
                style: TextStyle(fontFamily: 'JosefinSans',
                  fontSize: 20,
                  color: Colors.black,
                ),),
              leading: Icon(Icons.add_box),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pushNamed(context, '/notes');
              },
            ),
            ListTile(
              title: Text('Profile',
                style: TextStyle(fontFamily: 'JosefinSans',
                  fontSize: 20,
                  color: Colors.black,
                ),),
              leading: Icon(Icons.account_box),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                 Navigator.pushNamed(context, '/profilepage');

              },
            ),
            ListTile(
              title: Text('Settings',
                style: TextStyle(fontFamily: 'JosefinSans',
                  fontSize: 20,
                  color: Colors.black,
                ),),
              leading: Icon(Icons.settings),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pushNamed(context, '/settings');
              },
            ),
            Divider(
              color: Colors.black,
              thickness: 1.0,
            ),
            ListTile(
              title: Text('Logout',
                style: TextStyle(fontFamily: 'JosefinSans',
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              leading: Icon(Icons.exit_to_app),
              // Divider(height: 0.1,),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      // ListView.builder(
      //   itemExtent: 80,
      //   itemCount: _products.length,
      //   itemBuilder: (context, index) {
      //     return ScopedModelDescendant<CartModel>(
      //         builder: (context, child, model) {
      //       return ListTile(
      //           leading: Image.network(_products[index].imgUrl),
      //           title: Text(_products[index].title),
      //           subtitle: Text("\$"+_products[index].price.toString()),
      //           trailing: OutlineButton(
      //               child: Text("Add"),
      //               onPressed: () => model.addProduct(_products[index])));
      //     });
      //   },
      // ),
    );
  }
}
