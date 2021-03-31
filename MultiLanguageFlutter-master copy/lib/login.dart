import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:multiple_language/Explore.dart';
import 'package:multiple_language/Registration.dart';
import 'package:multiple_language/style.dart';
import 'package:multiple_language/verifyUserThirdPage.dart';
import 'custom_text.dart';
import 'home.dart';
import 'main_page.dart';

class  LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              color: white,
              height: 140,
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
              height: 40,
              color: white,
            ),
            SizedBox(
              height: 50,
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
                    MaterialPageRoute(builder: (context) => MainPage()),
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
                        CustomText(text: "Login", color: white, size: 19,)
                      ],
                    ),),
                ),
              ),
            ),

            GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegistrationPage()),
                  );
                },
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                  TextSpan(
              text: 'Don\'t have an account? ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextSpan(
              text: 'Sign Up',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),

            ),

                  ],
                ),
              )
            ),
          ],
        ),
      ),
    );
  }


}


