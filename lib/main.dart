import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

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
        AssetImage('images/products/1.png'),
        AssetImage('images/products/2.jpg'),
        AssetImage('images/products/3.jpg'),
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
        title:Text('Flipkart',style: TextStyle(fontStyle: FontStyle.italic),),
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
          image_carousel,
        ],
      ),
    );
  }
}