import 'package:flutter/material.dart';
import 'txt.dart';
class answer extends StatefulWidget {
  const answer({Key? key}) : super(key: key);

  @override
  _answerState createState() => _answerState();
}

class _answerState extends State<answer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //****App Bar****
        appBar: AppBar(
        title:Text("Your CGPA"),
        backgroundColor: Colors.blueAccent,
      ),


      //****Body****
      body: Container(
        child: Text("$subject"),
      ),
    );
  }
}
