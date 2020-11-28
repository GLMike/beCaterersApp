import 'package:SWEN/custom_icons_icons.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String selection = "LOGIN";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: SafeArea(
          child: Container(
            color: Colors.grey[900],
            child: Column(
              children: <Widget>[
                Container(
                  child: Image.asset(
                    'images/logo.png',
                    height: 300,
                    width: 300,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50.0, 0, 50.0, 0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                print("Login");
                                selection = "LOGIN";
                                setState(() {
                                });
                              },
                              child: Container(
                                alignment: Alignment.centerRight,
                                width: 125,
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      color: selection == "LOGIN"
                                          ? Color(0xff16C121)
                                          : Colors.black,
                                      fontSize: 25,
                                      fontFamily: 'Source Sans Pro',
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                            Text(
                              "|",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: 'Source Sans Pro',
                                  fontWeight: FontWeight.w700),
                            ),
                            InkWell(
                              onTap: () {
                                print("Register");
                                selection = "REGISTER";
                                setState(() {                                
                                });
                              },
                              child: Container(
                                alignment: Alignment.centerLeft,
                                width: 125,
                                child: Text(
                                  "Register",
                                  style: TextStyle(
                                      color: selection == "REGISTER"
                                          ? Color(0xff16C121)
                                          : Colors.black,
                                      fontSize: 25,
                                      fontFamily: 'Source Sans Pro',
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: 40,
                            ),
                            Text(
                              "Email",
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.grey[800],
                                  fontFamily: 'Source Sans Pro'),
                            ),
                          ],
                        ),
                        Container(
                          height: 35,
                          width: 280,
                          child: TextField(
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                            ),
                            decoration: InputDecoration(
                                hintText: 'example@gmail.com',
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.all(10)),
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: 40,
                            ),
                            Text(
                              "Password",
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.grey[800],
                                  fontFamily: 'Source Sans Pro'),
                            ),
                          ],
                        ),
                        Container(
                          height: 35,
                          width: 280,
                          child: TextField(
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20, fontFamily: 'Source Sans Pro'),
                            decoration: InputDecoration(
                                hintText: '************',
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.all(10)),
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                        ),
                        SizedBox(height: 20),
                        Container(
                          height: 30,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Color(0xff16C121),
                          ),
                          child: FlatButton(
                            onPressed: () {},
                            child: Text(
                              'Sign In',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w200,
                                  fontFamily: 'Source Sans Pro'),
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          "OR",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Source Sans Pro'),
                        ),
                        SizedBox(height: 15),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              color: Color(0xffDE5246),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          padding: EdgeInsets.all(3),
                          width: 250,
                          height: 30,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                CustomIcons.google,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Sign In With Google",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w200,
                                    fontFamily: 'Source Sans Pro'),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              color: Color(0xff3A559F),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          padding: EdgeInsets.all(3),
                          width: 250,
                          height: 30,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                CustomIcons.facebook,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Sign In With Facebook",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w200,
                                    fontFamily: 'Source Sans Pro'),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 25),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
