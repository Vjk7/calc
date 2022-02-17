import 'package:flutter/material.dart';
import 'remaining.dart';
var box1= "";
var box2 = "";
var box3 = "";
var  subject = List.filled(n, "", growable:true);
final subjectEditingcontroller = TextEditingController();
var cridits =List.filled(n,"",growable: true);
final criditsEditingcontroller = TextEditingController();
var grade =List.filled(n,"",growable: true);
final gradeEditingcontroller = TextEditingController();

class txt extends StatefulWidget {
  const txt({Key? key}) : super(key: key);


  @override
  _txtState createState() => _txtState();
}

class _txtState extends State<txt> {

  
  @override
  Widget build(BuildContext context) {
    return Row(

      children: [

        //********Subject tab*******
        Container(padding: EdgeInsets.fromLTRB(30.0, 5.0, 20.0, 0.0),
            width: 190.0,
            child: TextFormField(
            controller: subjectEditingcontroller,
            onFieldSubmitted: (text){
            this.setState(() {
            subject.add(text);
              });
            },

              decoration: InputDecoration(
                labelText: "Subject name",

                focusedBorder: UnderlineInputBorder(

                  borderSide: BorderSide(color: Color(0xff0090ff)),

                ),

              ),



              )
        ),


        //****Grade tab*****
        Container(padding: EdgeInsets.fromLTRB(0.0, 5.0, 20.0, 0.0),
            width: 110.0,
            child: TextFormField(
              controller: gradeEditingcontroller,
              onFieldSubmitted: (text){
                this.setState(() {
                  grade.add(text);
                });
              },

              decoration: InputDecoration(
                labelText: "Grade",

                focusedBorder: UnderlineInputBorder(

                  borderSide: BorderSide(color: Color(0xff0090ff)),

                ),

              ),
            )
        ),


        //*******cridits tab********
        Container(padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
            width: 50.0,
            child: TextFormField(
              controller: criditsEditingcontroller,
              onFieldSubmitted: (text){
                this.setState(() {
                  cridits.add(text);
                });
              },
              decoration: InputDecoration(
                labelText: "cridits",

                focusedBorder: UnderlineInputBorder(

                  borderSide: BorderSide(color: Color(0xff0090ff)),

                ),

              ),



               )
        ),
        IconButton(
          padding: EdgeInsets.only(top: 20.0),
            onPressed: (){},
            icon: Icon(Icons.highlight_remove_outlined))

      ],
    );
  }
}
