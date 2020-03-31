import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

import 'package:fashapp/components/horizontal_listview.dart';
import 'package:fashapp/components/products.dart';

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
  
  Widget image_carousel = new Container(
    height: 200.0,
    child: Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('images/slide/1.png'),
        AssetImage('images/slide/2.jpg'),
        AssetImage('images/slide/3.jpg'),
      ],
      autoplay: false,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds:1000),
      indicatorBgPadding: 2.0,
      dotSize: 4.0,

    ),
  );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title:Text('EazyCart',style: TextStyle(fontStyle: FontStyle.italic),),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search,color: Colors.white), onPressed: (null)),
          IconButton(icon: Icon(Icons.shopping_cart,color: Colors.white), onPressed: (null)),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("onlineguruweb"),
              accountEmail: Text("onlineguruweb@gmail.com"),
              currentAccountPicture: GestureDetector(
                              child: CircleAvatar(
                                backgroundColor: Colors.pink,
                                child: Icon(Icons.person,color: Colors.white,),
                  
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.blue
              ),
              ),
              
              InkWell(
                onTap:(){ print("Homepage");},
                child: ListTile(
                  leading: Icon(Icons.home,color: Colors.blue,),
                  title:Text('Homepage'),  
                ),
              ),
              InkWell(
                onTap:(){ print("account");},
                child: ListTile(
                  leading: Icon(Icons.person,color: Colors.blue,),
                  title:Text('My Account'),  
                ),
              ),
              InkWell(
                onTap:(){ print("categories");},
                child: ListTile(
                  leading: Icon(Icons.dashboard,color: Colors.blue,),
                  title:Text('Categories'),  
                ),
              ),
               InkWell(
                onTap:(){ print("wishlist");},
                child: ListTile(
                  leading: Icon(Icons.favorite,color: Colors.blue,),
                  title:Text('My Wishlist'),  
                ),
              ),
              Divider(),
               InkWell(
                onTap:(){ print("Settings");},
                child: ListTile(
                  leading: Icon(Icons.settings,color: Colors.blue,),
                  title:Text('Settings'),  
                ),
              ),
               InkWell(
                onTap:(){ print("Help");},
                child: ListTile(
                  leading: Icon(Icons.help,color: Colors.blue,),
                  title:Text('Support'),  
                ),
              ),

          ],
        )
      ),//drawer
      body: ListView(
        children: <Widget>[
         //image carousel
          image_carousel,
         
         //padding widget for categories
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
            'Categories',
            style: TextStyle(
              fontSize: 25.0,
            ),
            ),
          ),
          // category name and images
          HorizontalList(),

          //padding widget for recent products
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
            'Recent Products',
            style: TextStyle(
              fontSize: 25.0,
            ),
            ),
          ),
          //grid view for recent products
          Container(
            height: 320.0,
            child: Products(),
          )

          //
        ],
      ),
    );
  }
}