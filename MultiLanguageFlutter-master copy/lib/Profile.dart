import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
            length: 3,
            child: Scaffold(
                appBar: new AppBar(
                  leading: new IconButton(
                    icon: new Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  actions: <Widget>[
                    IconButton(icon: Icon(Icons.settings),color: Colors.white, onPressed: () {}),
                  ],
                  backgroundColor: Colors.blue.withOpacity(1), //You can make this transparent
                  elevation: 0.0, //No shadow
                ),
                body: SafeArea(
                    child: Column(children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            image: DecorationImage(
                              image: AssetImage("assets/images/bulb.jpg"),
                              fit: BoxFit.cover,
                            )
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 150,
                          child: Container(
                            alignment: Alignment(0.0,4.5),
                            child: CircleAvatar(
                              backgroundImage: AssetImage("img2.jpg"),
                              radius: 60.0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Text(
                        "Ujjal Thakur"
                        ,style: TextStyle(
                          fontSize: 20.0,
                          color:Colors.black,
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.bold
                      ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Sketch,oil painting"
                        ,style: TextStyle(
                          fontSize: 13.0,
                          color:Colors.black,
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.w300
                      ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "India"
                        ,style: TextStyle(
                          fontSize: 10.0,
                          color:Colors.black,
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.w300
                      ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 150,
                            height: 30,// specific value
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(color: Colors.blue)),
                              onPressed: (){

                              },
                              color: Colors.blue,
                              child: Text(
                                "+Follow",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.0,
                                    letterSpacing: 2.0,
                                    fontWeight: FontWeight.w300
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 150,
                            height: 30,// specific value
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(color: Colors.grey)),
                              onPressed: (){

                              },
                              color: Colors.grey,
                              child: Text(
                                "Message",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 12.0,
                                    letterSpacing: 2.0,
                                    fontWeight: FontWeight.w900
                                ),
                              ),
                            ),
                          )

                        ],
                      ),
                      PreferredSize(
                        preferredSize: Size.fromHeight(50.0),
                        child: TabBar(
                          labelColor: Colors.black,
                          tabs: [
                            Tab(
                              text: 'Artwork',
                            ),
                            Tab(
                              text: 'Shop',
                            ),
                            Tab(
                              text: 'About',
                            )
                          ], // list of tabs
                        ),
                      ),
                      //TabBarView(children: [ImageList(),])
                      Expanded(
                        child: TabBarView(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  image: DecorationImage(
                                    image: AssetImage("church.jpg"),
                                    fit: BoxFit.fill,
                                  )
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  image: DecorationImage(
                                    image: AssetImage("itc.jpg"),
                                    fit: BoxFit.fill,
                                  )
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  image: DecorationImage(
                                    image:AssetImage("niccoPark.jpg"),
                                    fit: BoxFit.fill,
                                  )
                              ),
                            ) // class name
                          ],
                        ),
                      ),
                    ])))));
  }
}
