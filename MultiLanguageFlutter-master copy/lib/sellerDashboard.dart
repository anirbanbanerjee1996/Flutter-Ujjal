import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:multiple_language/layout_type.dart';
import 'package:multiple_language/verifyUserSecondPage.dart';

import 'CustomInputBox.dart';
import 'IncomingOrder.dart';
import 'MyCart.dart';
import 'MyOrderDetails.dart';
import 'MyOrders.dart';
import 'PrivacyPolicy.dart';
import 'Profile.dart';
import 'ReturningShipment.dart';
import 'Reviews.dart';
import 'Terms&Condition.dart';
import 'TrackShipment.dart';
import 'login.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key key, onLayoutToggle, LayoutGroup layoutGroup}) : super(key: key);

  @override
  DashboardState createState() => DashboardState();
}

class DashboardState extends State<Dashboard> {
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
            leading: CircleAvatar(
              radius: 20,
              backgroundImage : AssetImage("img2.jpg"),
            ),
            title: Text('Jimini Yadav', style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 17.0)),
            subtitle: Text('Visit Profile', style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 12.0)),

          ),
          ListTile(
            leading: Text('Incoming orders', style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 17.0)),
          ),
          new GestureDetector(
              onTap: ()
              async{
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => IncomingOrders()),
                );

              },
              child: new Container(

                height: 130.0,
                margin: new EdgeInsets.all(10.0),
                decoration: new BoxDecoration(borderRadius: new BorderRadius.all(new Radius.circular(8.0)),
                  color: Color.fromRGBO(204, 255, 180, 1),),
                child:
                Row(
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(left: 10.0,top: 20),
                      child: new Column(
                        children: <Widget>[
                          new Text('* 7 horses oil painting', style: new TextStyle(fontSize: 12.0, color: Color.fromRGBO(65, 65, 65, 0.5), fontWeight: FontWeight.w500 , fontStyle: FontStyle.normal, ),),
                          new Text('Syed Rajiul', style: new TextStyle(fontSize: 10.0, color: Color.fromRGBO(65, 65, 65, 0.5), fontWeight: FontWeight.w400 , fontStyle: FontStyle.normal),),
                          new SizedBox(height: 7.0,),
                          new Text('* 7 horses oil painting', style: new TextStyle(fontSize: 12.0, color: Color.fromRGBO(65, 65, 65, 0.5), fontWeight: FontWeight.w500 , fontStyle: FontStyle.normal, ),),
                          new Text('Syed Rajiul', style: new TextStyle(fontSize: 10.0, color: Color.fromRGBO(65, 65, 65, 0.5), fontWeight: FontWeight.w400 , fontStyle: FontStyle.normal),),
                          new SizedBox(height: 7.0,),
                          new Text('* 7 horses oil painting', style: new TextStyle(fontSize: 12.0, color: Color.fromRGBO(65, 65, 65, 0.5), fontWeight: FontWeight.w500 , fontStyle: FontStyle.normal, ),),
                          new Text('Syed Rajiul', style: new TextStyle(fontSize: 10.0, color: Color.fromRGBO(65, 65, 65, 0.5), fontWeight: FontWeight.w400 , fontStyle: FontStyle.normal),),
                          new SizedBox(height: 7.0,),
                        ],)),
                  ],),
              ),
              ),
          ListTile(
            leading: Text('Track shipment', style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 17.0)),
          ),
          new GestureDetector(
              onTap: () async{
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TrackShipment()),
                );

              },
              child: new Container(
                height: 60.0,
                margin: new EdgeInsets.all(10.0),
                decoration: new BoxDecoration(borderRadius: new BorderRadius.all(new Radius.circular(8.0)),
                  color: Color.fromRGBO(253, 255, 180, 1),),
                child:
                Row(

                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(left: 10.0,top: 20),
                        child: new Column(
                          children: <Widget>[
                            new Text('* 7 horses oil painting', style: new TextStyle(fontSize: 12.0, color: Color.fromRGBO(65, 65, 65, 0.5), fontWeight: FontWeight.w500 , fontStyle: FontStyle.normal, ),),
                            new Text('#2234', style: new TextStyle(fontSize: 10.0, color: Color.fromRGBO(65, 65, 65, 0.5), fontWeight: FontWeight.w400 , fontStyle: FontStyle.normal),),



                          ],)),




                  ],),


                  ),
          ),
          ListTile(
            leading: Text('Returning shipment', style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 17.0)),
          ),
          new GestureDetector(
            onTap: () async{
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ReturnShipment()),
              );

            },
            child: new Container(
              height: 80.0,
              margin: new EdgeInsets.all(10.0),
              decoration: new BoxDecoration(borderRadius: new BorderRadius.all(new Radius.circular(8.0)),
                color: Color.fromRGBO(255, 208, 208, 1),),
              child:
              Row(
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(left: 10.0,top: 20),
                      child: new Column(
                        children: <Widget>[
                          new Text('* 7 horses oil painting', style: new TextStyle(fontSize: 12.0, color: Color.fromRGBO(65, 65, 65, 0.5), fontWeight: FontWeight.w500 , fontStyle: FontStyle.normal, ),),
                          new Text('Syed Rajiul', style: new TextStyle(fontSize: 10.0, color: Color.fromRGBO(65, 65, 65, 0.5), fontWeight: FontWeight.w400 , fontStyle: FontStyle.normal),),
                        ],)),
                ],),


            ),
          ),
          ListTile(
            leading: Text('Reviews', style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 17.0)),
          ),
          new GestureDetector(
            onTap: () async{
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Reviews()),
              );

            },
            child: new Container(
              height: 100.0,
              margin: new EdgeInsets.all(10.0),
              decoration: new BoxDecoration(borderRadius: new BorderRadius.all(new Radius.circular(8.0)),
                color: Color.fromRGBO(180, 229, 255, 1),),
              child:
              Row(
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(left: 10.0,top: 20),
                      child: new Column(
                        children: <Widget>[
                          new Text('* 7 horses oil painting', style: new TextStyle(fontSize: 12.0, color: Color.fromRGBO(65, 65, 65, 0.5), fontWeight: FontWeight.w500 , fontStyle: FontStyle.normal, ),),
                          new Text('Syed Rajiul', style: new TextStyle(fontSize: 10.0, color: Color.fromRGBO(65, 65, 65, 0.5), fontWeight: FontWeight.w400 , fontStyle: FontStyle.normal),),
                          new SizedBox(height: 7.0,),
                          new Text('* 7 horses oil painting', style: new TextStyle(fontSize: 12.0, color: Color.fromRGBO(65, 65, 65, 0.5), fontWeight: FontWeight.w500 , fontStyle: FontStyle.normal, ),),
                          new Text('Syed Rajiul', style: new TextStyle(fontSize: 10.0, color: Color.fromRGBO(65, 65, 65, 0.5), fontWeight: FontWeight.w400 , fontStyle: FontStyle.normal),),
                        ],)),
                ],),


            ),
          ),




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


