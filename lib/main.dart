import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Homepage(),
));

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title:Text('Flipkart',style: TextStyle(fontStyle: FontStyle.italic),),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search,color: Colors.white), onPressed: (null)),
          IconButton(icon: Icon(Icons.shopping_cart,color: Colors.white), onPressed: (null)),
        ],
      ),
    );
  }
}