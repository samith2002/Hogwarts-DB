import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:lottie/lottie.dart';

class Bvrit extends StatefulWidget {
  @override
  _EcapState createState() => _EcapState();
}

class _EcapState extends State<Bvrit> {
  final flutterWebviewPlugin = new FlutterWebviewPlugin();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      child: WebviewScaffold(
        url: 'https://hpaudiobooks.club/',
        withJavascript: true,
        withZoom: true,
        hidden: true,
        appBar: AppBar(
          centerTitle: true,
          title:Text("Audio Books",
          style:TextStyle(
            fontFamily:"Harry",
            fontSize:40,
          ),
          ),
          backgroundColor: Colors.black,
          actions:<Widget> [
            InkWell(
              child: Icon(Icons.refresh),
              onTap: () {
                flutterWebviewPlugin.reloadUrl('https://hpaudiobooks.club/');
              },
            ),
          ],
        ),
        initialChild: SafeArea(
            child:Scaffold(
              backgroundColor: Colors.black,
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.black,
                      height: 400,
                      width: 400,
                      child: Lottie.asset('images/Cast.json'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Text(
                        'Casting audio books for you please wait!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 23,
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
        ),
      ),
    );

  }
}
