import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:multiple_language/Shop.dart';
import 'package:multiple_language/layout_type.dart';
import 'package:multiple_language/verifyUserSecondPage.dart';

import 'CustomInputBox.dart';
import 'Explore.dart';
import 'MyCart.dart';
import 'MyOrders.dart';
import 'PrivacyPolicy.dart';
import 'Profile.dart';
import 'ShippingAddress.dart';
import 'Terms&Condition.dart';
import 'addToCart.dart';
import 'feed.dart';
import 'login.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, onLayoutToggle, LayoutGroup layoutGroup}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyCart()),
              );
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
      body: SingleChildScrollView(
    child: Stack(
    children: [
    Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    Align(
    alignment: Alignment.centerLeft,
    child: SizedBox(
      width: double.infinity,
      height: 50,// match_parent
      child: RaisedButton(
        onPressed: () {},
        child: Text("Verify yourself as a seller", textAlign: TextAlign.left,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 20.0 ),),
        color: Colors.blue,

      ),
    )

    ),
    Align(
    alignment: Alignment.centerLeft,
    child: Padding(
    padding: const EdgeInsets.only(left: 10, top: 5),
    child: Text(
    '',
    style: TextStyle(
    fontFamily: 'Nunito Sans',
    fontSize: 15,
    color: Colors.black,
    fontWeight: FontWeight.w700,
    ),
    ),
    ),
    ),

    MyCustomInputBox(
    label: 'First name',
    ),
    //

    //
      MyCustomInputBox(
        label: 'Last name',
      ),
      //

      MyCustomInputBox(
        label: 'Email',
      ),
      //

      MyCustomInputBox(
        label: 'Mobile number',
      ),
      //

      MyCustomInputBox(
        label: 'Address',

      ),
      //

      MyCustomInputBox(
        label: 'Pan card number',
      ),
      //
      //
      SizedBox(
          width: double.infinity,
          height: 50,// match_parent
          child: RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage2()),
              );
            },
            child: Text("Continue", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 20.0 )),
            padding: const EdgeInsets.only(top: 0.0,bottom: 0.0),
            color: Colors.blue,

          ),
      )


    ],
    ),
    //

    ],
    ),
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


