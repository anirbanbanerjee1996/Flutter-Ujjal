import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:multiple_language/PrivacyPolicy.dart';
import 'package:multiple_language/verifyUserSecondPage.dart';

import 'CustomInputBox.dart';
import 'MyCart.dart';
import 'MyOrderDetails.dart';
import 'MyOrders.dart';
import 'Profile.dart';
import 'dart:math';

import 'ReturningShipment.dart';
import 'Terms&Condition.dart';
import 'layout_type.dart';
import 'login.dart';

class ReturnShipment2 extends StatefulWidget {
  ReturnShipment2({Key key, onLayoutToggle, LayoutGroup layoutGroup}) : super(key: key);

  @override
  ReturnShipment2State createState() =>ReturnShipment2State();
}
class Place {
  String imageUrl;
  String name;
  String country;
  String state;

  Place({this.imageUrl, this.name, this.country, this.state});
}

class ReturnShipment2State extends State<ReturnShipment2> {
  int selectedIndex = 2;


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
            leading: Text('Returning Shipments', style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 17.0)),
          ),
          Wrap(
            children: <Widget>[
              new Padding(padding: new EdgeInsets.only(left: 15.0),

              ),
              RaisedButton(
                  onPressed: () async{
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ReturnShipment()),
                    );

                  },
                  child: Text("Returning",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 12.0 ),),

                  color: Color.fromRGBO(219, 219, 219, 0.7),
                  shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))

              ),
              SizedBox(width: 16),

              RaisedButton(
                  onPressed: () {},
                  child: Text("Track shipped",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 12.0 ),),
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))

              ),

            ],
          ),
          SizedBox(height: 10),
          new GestureDetector(
              onTap: ()
              async{
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyOrder()),
                );

              },
              child: new Container(
                height: 150.0,
                margin: new EdgeInsets.all(10.0),
                decoration: new BoxDecoration(borderRadius: new BorderRadius.all(new Radius.circular(8.0)),
                  color: Color.fromRGBO(0, 0, 0, 0.09),),
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
                        new Text('7 horses oil painting', style: new TextStyle(fontSize: 14.0, color: Colors.black, fontWeight: FontWeight.w500 , fontStyle: FontStyle.normal, ),),
                        new SizedBox(height: 6.0,),
                        new Text('2 confirmations left', style: new TextStyle(fontSize: 12.0, color: Color.fromRGBO(62, 187, 3, 0.85), fontWeight: FontWeight.w400 , fontStyle: FontStyle.normal),),
                        new SizedBox(height: 7.0,),
                        new Text('Pick up scheduled in 2 days after confirmation', style: new TextStyle(fontSize: 10.0, color: Color.fromRGBO(0, 0, 0, .5), fontWeight: FontWeight.w500 , fontStyle: FontStyle.italic),),
                        new SizedBox(height: 7.0,),
                        Wrap(
                          children: <Widget>[
                            RaisedButton(
                                onPressed: () {},
                                child: Text("Reshedule",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 10.0 ),),
                                color: Colors.blue,
                                shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0))

                            ),
                            SizedBox(width: 16),

                            RaisedButton(
                                onPressed: () {},
                                child: Text("Request cancellation",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 10.0 ),),
                                color: Color.fromRGBO(219, 219, 219, 0.7),
                                shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0))

                            ),

                          ],
                        ),

                      ],)),

                  ],),
              )
          ),

          SizedBox(height: 10),
          Container( height: 1.0,
            width: 1.0,
            color: Color.fromRGBO(0, 0, 0, 0.09),
            margin: const EdgeInsets.only(left: 15.0, right: 15.0),),
          SizedBox(height: 13),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: 'Need help? Call us at ',style:TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 10.0 ),),
                    WidgetSpan(
                      child: Icon(Icons.call, size: 14),
                    ),
                    TextSpan(text: ' 0000 3434 5555', style: TextStyle(color: Color.fromRGBO(15, 150, 219, 1),fontWeight: FontWeight.w600,fontSize: 10.0 )),
                    TextSpan(text: '   or  ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 10.0 )),
                    WidgetSpan(
                      child: Icon(Icons.chat, size: 14),
                    ),
                    TextSpan(text: ' Chat now', style: TextStyle(color: Color.fromRGBO(15, 150, 219, 1),fontWeight: FontWeight.w600,fontSize: 10.0 )),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 13),
          Container( height: 1.0,
            width: 1.0,
            color: Color.fromRGBO(0, 0, 0, 0.09),
            margin: const EdgeInsets.only(left: 15.0, right: 15.0),),

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


