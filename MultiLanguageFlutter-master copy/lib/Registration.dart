import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:multiple_language/feed.dart';
import 'package:multiple_language/verifyUserSecondPage.dart';
import 'package:multiple_language/style.dart';

import 'CustomInputBox.dart';
import 'Profile.dart';
import 'custom_text.dart';
import 'home.dart';

class  RegistrationPage extends StatefulWidget {
  RegistrationPage({Key key}) : super(key: key);

  @override
  RegistrationPageState createState() => RegistrationPageState();
}

class RegistrationPageState extends State<RegistrationPage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("Registration", textAlign: TextAlign.left,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 20.0 ),),
          ],
        ),


        centerTitle: false,

      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              color: white,
              height: 100,
            ),

            Container(
              color: white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset("logo.jpeg", width: 100, height: 100,),

                ],
              ),
            ),

            Container(
              height: 20,
              color: white,
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25,right: 25,top: 10,bottom: 0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.lightBlue.withOpacity(0.3)),
                    borderRadius: BorderRadius.circular(5)
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Colors.lightBlue.withOpacity(0.3),
                    border: InputBorder.none,
                    hintText: "Name",

                  ),
                ),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25,right: 25,top: 10,bottom: 0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.lightBlue.withOpacity(0.3)),
                    borderRadius: BorderRadius.circular(5)
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Colors.lightBlue.withOpacity(0.3),
                    border: InputBorder.none,
                    hintText: "Phone no",

                  ),
                ),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25,right: 25,top: 15,bottom: 0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.lightBlue.withOpacity(0.3)),
                    borderRadius: BorderRadius.circular(5)
                ),

                child: TextFormField(
                  decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Colors.lightBlue.withOpacity(0.3),
                      border: InputBorder.none,
                      hintText: "Email address"
                  ),
                ),),
            ),


            Padding(
              padding: const EdgeInsets.only(left: 25,right: 25,top: 10,bottom: 0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.lightBlue.withOpacity(0.3)),
                    borderRadius: BorderRadius.circular(5)
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Colors.lightBlue.withOpacity(0.3),
                    border: InputBorder.none,
                    hintText: "Password",

                  ),
                ),),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 25,right: 25,top: 10,bottom: 20),
              child: GestureDetector(
                onTap: ()async{
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FeedPage()),
                  );

                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: Padding(padding: EdgeInsets.only(top: 10, bottom: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CustomText(text: "Registration", color: white, size: 19,)
                      ],
                    ),),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }


}


