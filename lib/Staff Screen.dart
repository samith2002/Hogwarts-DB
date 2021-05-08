import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hogwarts_db/Staff%20info%20screen.dart';
import 'package:hogwarts_db/Student%20info%20screen.dart';
import 'package:http/http.dart'as http;


class Staffpic extends StatefulWidget {
  @override
  _StudentpicState createState() => _StudentpicState();
}

class _StudentpicState extends State<Staffpic> {
  List listContent;

  Future fetchdata()async{
    http.Response response;
    response =await http.get(Uri.parse("http://hp-api.herokuapp.com/api/characters/staff"));
    if(response.statusCode==200){
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
      backgroundColor:Colors.grey.shade900,
      appBar:AppBar(
        centerTitle:true,
        backgroundColor:Colors.black,
        title:Text("Staff",
          style:TextStyle(
            fontFamily:"Harry",
            fontSize: 40,
          ),
        ),
      ),
      body:RefreshIndicator(
        onRefresh:fetchdata,
        child: GridView.builder(
            shrinkWrap:true,
            gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2),
            itemCount:8,
            itemBuilder: (_,index){
              return GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return Staffinfo();
                  }),
                  );
                },
                child: Container(
                  margin:EdgeInsets.all(10),
                  width:600,
                  height:600,
                  child:listContent==null?Text("Loading...",style:TextStyle(color:Colors.white),):Image(
                    image:NetworkImage(listContent[index]["image"]),
                  ),
                ),
              );
            }
        ),
      ),
    );
  }
}
