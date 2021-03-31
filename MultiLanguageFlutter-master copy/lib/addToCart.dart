import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:multiple_language/verifyUserSecondPage.dart';

import 'CustomInputBox.dart';
import 'MyCart.dart';
import 'MyOrders.dart';
import 'PrivacyPolicy.dart';
import 'Profile.dart';
import 'dart:math';

import 'Terms&Condition.dart';
import 'layout_type.dart';
import 'login.dart';

class AddToCart extends StatefulWidget {
  AddToCart({Key key, onLayoutToggle, LayoutGroup layoutGroup}) : super(key: key);

  @override
  AddToCartState createState() => AddToCartState();
}

class AddToCartState extends State<AddToCart> {
  int selectedIndex = 2;
  final widgetOptions = [
    Text('Ist'),
    Text('Second'),
    Text('Third'),
    Text('Fourth'),
    Text('Five'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(

          children: <Widget>[
            IconButton(
              icon: Image.asset('assets/logo.jpeg'),
              onPressed: () { },
            ),

          ],
        ),
        actions: <Widget>[
          // Location button added
          IconButton(
            icon: Icon(
              Icons.add_shopping_cart,
              color: Colors.black,
            ),
            onPressed: () {
            },
          ),
          IconButton(
            icon: Icon(
              Icons.notifications_none,
              color: Colors.black,
            ),
            onPressed: () {

            },
          )

        ],

        centerTitle: false,

      ),
      body: ListView(

        children: <Widget> [

          Container(
              child: Image.asset("tipuSultan.jpg")
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
            width: MediaQuery.of(context).size.width,

            child: Text('7 horses oil painting-hand ma...', style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 16.0)),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundImage : AssetImage("img2.jpg"),
            ),
            title: Text('Jimini Yadav', style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 14.0)),

          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
            width: MediaQuery.of(context).size.width,

            child: Text('7 horses oil painting-hand ma...', style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 16.0)),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
            width: MediaQuery.of(context).size.width,

            child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industry', style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 12.0)),

          ),

          SizedBox(
            height: 250,
          ),
          ListTile(

            contentPadding: EdgeInsets.all(0),

            title: Row(

              children: <Widget>[

                Expanded(child: RaisedButton(onPressed: () {},child: Text("Add to cart"),color: Colors.grey,textColor: Colors.black,)),
                Expanded(child: RaisedButton(onPressed: () {},child: Text("Buy now"),color: Colors.blue,textColor: Colors.white,)),
              ],
            ),
          )
        ],
      ),


      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[

            DrawerHeader(

                child: Text('Hello \nJimini!', style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 33.0,)),
                decoration: BoxDecoration(
                  color: Colors.blue,


                ),
                margin : EdgeInsets.all(0.0),
                padding: EdgeInsets.all(40.0)
            ),
            ListTile(
              leading: Icon(
                Icons.account_circle,
                color: Colors.blue,
                size: 30.0,
              ),
              title: Text('My Profile', style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 16.0)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
                );
              },

            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.credit_card,
                color: Colors.blue,
                size: 30.0,
              ),
              title: Text('My orders', style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 16.0)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyOrders()),
                );
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.favorite,
                color: Colors.blue,
                size: 30.0,
              ),
              title: Text('My wishlist', style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 16.0)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyCart()),
                );
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.chat,
                color: Colors.blue,
                size: 30.0,
              ),
              title: Text('My Chats', style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 16.0)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyOrders()),
                );
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.notifications_none,
                color: Colors.blue,
                size: 30.0,
              ),
              title: Text('Notifications', style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 16.0)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyOrders()),
                );
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.security,
                color: Colors.blue,
                size: 30.0,
              ),
              title: Text('Privacy Policy', style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 16.0)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PrivacyPolicy()),
                );
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.security,
                color: Colors.blue,
                size: 30.0,
              ),
              title: Text('Terms & Condition', style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 16.0)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TC()),
                );
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.exit_to_app,
                color: Colors.blue,
                size: 30.0,
              ),
              title: Text('Logout', style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 16.0)),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}


