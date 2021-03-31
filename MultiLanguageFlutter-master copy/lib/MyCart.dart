import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:multiple_language/PrivacyPolicy.dart';
import 'package:multiple_language/verifyUserSecondPage.dart';

import 'CustomInputBox.dart';
import 'MyOrderDetails.dart';
import 'MyOrders.dart';
import 'Profile.dart';
import 'dart:math';

import 'Terms&Condition.dart';
import 'layout_type.dart';
import 'login.dart';

class MyCart extends StatefulWidget {
  MyCart({Key key, onLayoutToggle, LayoutGroup layoutGroup}) : super(key: key);

  @override
  MyCartState createState() =>MyCartState();
}
class Place {
  String imageUrl;
  String name;
  String country;
  String state;

  Place({this.imageUrl, this.name, this.country, this.state});
}

class MyCartState extends State<MyCart> {
  int selectedIndex = 2;
  final widgetOptions = [
    Text('Ist'),
    Text('Second'),
    Text('Third'),
    Text('Fourth'),
    Text('Five'),
  ];
  List wonders = [
    Place(
        imageUrl:
        "https://d36tnp772eyphs.cloudfront.net/blogs/1/2018/02/Taj-Mahal.jpg",
        name: "Taj Mahal",
        country: "India",
        state: "WestBengal"
    ),
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
              Icons.search,
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
          ListTile(
            leading: Text('My Cart', style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 17.0)),
          ),
          new GestureDetector(
              onTap: ()
              async{
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyOrder()),
                );

              },
              child: new Container(
                height: 130.0,
                margin: new EdgeInsets.all(10.0),
                decoration: new BoxDecoration(borderRadius: new BorderRadius.all(new Radius.circular(8.0)),
                  color: Color.fromRGBO(30, 165, 234, .30),),
                child:
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Padding(padding: new EdgeInsets.only(left: 10.0, right: 10.0),
                        child: new CircleAvatar(radius: 40.0, backgroundImage: AssetImage("tree.jpg"))
                    ),

                    new Expanded(child: new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text('Oil painting-Lorem ipsum', style: new TextStyle(fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.w500 , fontStyle: FontStyle.normal, ),),
                        new SizedBox(height: 6.0,),
                        new Text('Dispatched', style: new TextStyle(fontSize: 15.0, color: Colors.black, fontWeight: FontWeight.w400 , fontStyle: FontStyle.italic),),
                        new SizedBox(height: 7.0,),
                        new Text('Expected delivery 24th Jan', style: new TextStyle(fontSize: 14.0, color: Color.fromRGBO(0, 0, 0, .5), fontWeight: FontWeight.w500 , fontStyle: FontStyle.italic),),
                        new SizedBox(height: 7.0,),

                      ],)),

                  ],),
              )
          ),
          new GestureDetector(
              onTap: () async{
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyOrder()),
                );

              },
              child: new Container(
                height: 130.0,

                margin: new EdgeInsets.all(10.0),
                decoration: new BoxDecoration(borderRadius: new BorderRadius.all(new Radius.circular(8.0)),
                  color: Color.fromRGBO(30, 165, 234, .30),),
                child:
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Padding(padding: new EdgeInsets.only(left: 10.0, right: 10.0),
                        child: new CircleAvatar(radius: 40.0, backgroundImage: AssetImage("tree.jpg"))
                    ),

                    new Expanded(child: new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text('Oil painting-Lorem ipsum', style: new TextStyle(fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.w500 , fontStyle: FontStyle.normal, ),),
                        new SizedBox(height: 6.0,),
                        new Text('Dispatched', style: new TextStyle(fontSize: 15.0, color: Colors.black, fontWeight: FontWeight.w400 , fontStyle: FontStyle.italic),),
                        new SizedBox(height: 7.0,),
                        new Text('Expected delivery 24th Jan', style: new TextStyle(fontSize: 14.0, color: Color.fromRGBO(0, 0, 0, .5), fontWeight: FontWeight.w500 , fontStyle: FontStyle.italic),),
                        new SizedBox(height: 7.0,),

                      ],)),

                  ],),


              )
          ),
          SizedBox(
            height: 200,
          ),
          ListTile(

            contentPadding: EdgeInsets.all(0),

            title: Row(

              children: <Widget>[

                Expanded(child: RaisedButton(onPressed: () {},child: Text("Continue Shopping"),color: Colors.blue,textColor: Colors.black,)),
                Expanded(child: RaisedButton(onPressed: () {},child: Text("Checkout"),color: Colors.green,textColor: Colors.white,)),
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


