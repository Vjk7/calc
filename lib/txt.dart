import 'package:flutter/material.dart';

class txt extends StatefulWidget {
  const txt({Key? key}) : super(key: key);


  @override
  _txtState createState() => _txtState();
}

class _txtState extends State<txt> {
  String subject ="";
  final subEditingcontroller = TextEditingController();
  String marks ="";
  final marEditingcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(padding: EdgeInsets.fromLTRB(30.0, 5.0, 20.0, 0.0),
            width: 300.0,
            child: TextFormField(
            controller: subEditingcontroller,
            onChanged: (text){
            this.setState(() {
            subject = text;
              });
            },

              decoration: InputDecoration(
                labelText: "Subject name",

                focusedBorder: UnderlineInputBorder(

                  borderSide: BorderSide(color: Color(0xff0090ff)),

                ),

              ),
              onSaved:(newValue) {
                subject = newValue!;


              } ,)
        ),
        Container(padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
            width: 50.0,
            child: TextFormField(
              controller: marEditingcontroller,
              onChanged: (text){
                this.setState(() {
                  marks = text;
                });
              },
              decoration: InputDecoration(
                labelText: "Marks",

                focusedBorder: UnderlineInputBorder(

                  borderSide: BorderSide(color: Color(0xff0090ff)),

                ),

              ),



               )
        ),

      ],
    );
  }
}
