import 'package:flutter/material.dart';

class Houses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor:Colors.black,
      centerTitle: true,
        title:Text("Houses",
        style:TextStyle(
          fontFamily: "Harry",
          fontSize:50
        ),
        ),
      ),
      body:Scaffold(
        backgroundColor:Colors.white,
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
                    child: Image(image:AssetImage("images/grf.png")
                    ),
                  ),
                ),
                Container(
                  padding:EdgeInsets.only(top:9),
                  width:350,
                  height:320,
                  child: Image(image:AssetImage("images/hufflepuff.png")
                  ),
                ),
                Container(
                  padding:EdgeInsets.only(top:9),
                  width:370,
                  height:290,
                  child: Image(image:AssetImage("images/raven claw.png")
                  ),
                ),
                Container(
                  padding:EdgeInsets.only(top:9),
                  width:370,
                  height:260,
                  child: Image(image:AssetImage("images/slytherin.png")
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}