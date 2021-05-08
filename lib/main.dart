import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:hogwarts_db/BOOKS.dart';
import 'package:hogwarts_db/Houses.dart';
import 'package:hogwarts_db/Staff%20Screen.dart';

import 'package:hogwarts_db/Students%20Screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.black,
      body:ListView(
        children: [
          Column(
            mainAxisAlignment:MainAxisAlignment.start,
            children: [
              SafeArea(
                child: Container(
                  padding:EdgeInsets.only(top:9),
                  width:350,
                  height:330,
                  child: Image(image:AssetImage("images/logo.png")
                  ),
                ),
              ),
              SizedBox(
                height:30,
              ),
              TypewriterAnimatedTextKit(
                text: [' Hogwart\'s DataBase'],
                textStyle: TextStyle(
                    fontSize: 55.0,
                    color: Colors.yellow.shade700,
                    fontFamily:"Harry",
                    fontWeight: FontWeight.w500
                ),
                speed:Duration(milliseconds:80),
                isRepeatingAnimation:false,
                //repeatForever:false,
                displayFullTextOnTap:true,
                totalRepeatCount:1,
              ),

              SizedBox(
                height: 40,
                width: 143,
                // child:Divider(
                //   height:40,
                //   color: Colors.red.shade900,
                //   thickness:3,
                // ),
              ),
              Column(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment:CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return Studentpic();
                          }),
                          );
                        },
                        child: Container(
                          child: Center(
                            child: Text(
                              "Students",
                              textAlign:TextAlign.center,
                              style:TextStyle(
                                color:Colors.black,
                                fontSize:40,
                                fontFamily:"Harry",
                              ),
                            ),
                          ),
                          decoration:
                          BoxDecoration(
                            color:Colors.white,
                            borderRadius:BorderRadius.circular(8),
                          ),
                          width:130,
                          height:45,
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return Staffpic();
                          }),
                          );
                        },
                        child: Container(
                          child: Center(
                            child: Text(
                              "Staff",
                              textAlign:TextAlign.center,
                              style:TextStyle(
                                letterSpacing:1.2,
                                color:Colors.black,
                                fontSize:40,
                                fontFamily:"Harry",
                              ),
                            ),
                          ),
                          decoration:
                          BoxDecoration(
                            color:Colors.white,
                            borderRadius:BorderRadius.circular(8),
                          ),
                          width:130,
                          height:45,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                    width: 143,
                  ),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment:CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return Houses();
                          }),
                          );
                        },
                        child: Container(
                          child: Center(
                            child: Text(
                              "Houses",
                              textAlign:TextAlign.center,
                              style:TextStyle(
                                letterSpacing:1.3,
                                color:Colors.black,
                                fontSize:45,
                                fontFamily:"Harry",
                              ),
                            ),
                          ),
                          decoration:
                          BoxDecoration(
                            color:Colors.white,
                            borderRadius:BorderRadius.circular(8),
                          ),
                          width:130,
                          height:45,
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return Bvrit();
                          }),
                          );
                        },
                        child: Container(
                          child: Center(
                            child: Text(
                              "Books",
                              textAlign:TextAlign.center,
                              style:TextStyle(
                                color:Colors.black,
                                fontSize:42,
                                fontFamily:"Harry",
                              ),
                            ),
                          ),
                          decoration:
                          BoxDecoration(
                            color:Colors.white,
                            borderRadius:BorderRadius.circular(8),
                          ),
                          width:130,
                          height:45,
                        ),
                      ),
                    ],
                  )
                ],
              )

            ],
          ),
          SizedBox(
            height:15,
          ),
          Center(
            child: TypewriterAnimatedTextKit(
              text: ['App Wizard : Siddo Samith'],
              textStyle: TextStyle(
                  fontSize: 24.0,
                  color: Colors.yellow.shade700,
                  fontFamily:"Harry",
                  fontWeight: FontWeight.w500
              ),
              speed:Duration(milliseconds:80),
              isRepeatingAnimation:false,
              //repeatForever:false,
              displayFullTextOnTap:true,
              totalRepeatCount:1,
            ),
          ),

        ],
      ),

    );
  }
}
