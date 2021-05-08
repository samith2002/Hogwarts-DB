import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Staffinfo extends StatefulWidget {
  @override
  _StudentpicState createState() => _StudentpicState();
}

class _StudentpicState extends State<Staffinfo> {
  List listContent=[];

  Future fetchdata() async {
    http.Response response;
    response = await http
        .get(Uri.parse("http://hp-api.herokuapp.com/api/characters/staff"));
    if (response.statusCode == 200) {
      listContent = json.decode(response.body);
    }
  }

  @override
  void initState() {
    fetchdata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey.shade900,
        title: Text(
          "Staff",
          style: TextStyle(
            fontFamily: "Harry",
            fontSize: 40,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: ListView.builder(
            physics:NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            //gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2),
            itemCount: listContent.length,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SafeArea(
                    child: Center(
                      child: Container(
                        margin: EdgeInsets.all(20),
                        width: 200,
                        height: 200,
                        child: Image(
                          image: NetworkImage(listContent[index]["image"]),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    listContent[index]["name"],
                    style: TextStyle(
                        color: Colors.white, fontFamily: "Harry", fontSize: 50),
                  ),
                  SizedBox(
                    height: 40,
                    width: 190,
                    child: Divider(
                      height: 5,
                      thickness: 3,
                      color: Colors.red,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "House :",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 20,
                            fontFamily: "Patua"),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        listContent[index]["house"],
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: "Patua"),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "date Of Birth :",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 20,
                            fontFamily: "Patua"),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        listContent[index]["dateOfBirth"].toString(),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: "Patua"),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Year Of Birth :",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 20,
                            fontFamily: "Patua"),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        listContent[index]["yearOfBirth"].toString(),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: "Patua"),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                      Text("ancestry : ",style:TextStyle(color:Colors.red,fontSize:20,fontFamily:"Patua"),),
                      SizedBox(width:6,),
                      Text(listContent[index]["ancestry"].toString(),style:TextStyle(color:Colors.white,fontSize:25,fontFamily: "Patua"),),
                    ],
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                      Text("Wand : ",style:TextStyle(color:Colors.red,fontSize:20,fontFamily:"Patua"),),
                      SizedBox(width:6,),
                      Text(listContent[index]["wand"]["wood"].toString(),style:TextStyle(color:Colors.white,fontSize:25,fontFamily: "Patua"),),
                    ],
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                      Text("Wand length : ",style:TextStyle(color:Colors.red,fontSize:20,fontFamily:"Patua"),),
                      SizedBox(width:6,),
                      Text(listContent[index]["wand"]["length"].toString(),style:TextStyle(color:Colors.white,fontSize:25,fontFamily: "Patua"),),
                    ],
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                      Text("core : ",style:TextStyle(color:Colors.yellow,fontSize:20,fontFamily:"Patua"),),
                      SizedBox(width:6,),
                      Text(listContent[index]["wand"]["core"].toString(),style:TextStyle(color:Colors.white,fontSize:25,fontFamily: "Patua"),),
                    ],
                  ),
                ],

              );
            }),
      ),
    );
  }
}
