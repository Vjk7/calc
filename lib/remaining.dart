
import 'package:flutter/material.dart';
import 'txt.dart';



class remaining extends StatefulWidget {
  const remaining({Key? key}) : super(key: key);


  @override
  _remainingState createState() => _remainingState();
}

class _remainingState extends State<remaining> {
  var n = 1;
  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      children: [


        //calling the text tab
     for(var i=0; i<n ; i++)
          txt(),




        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            //creating button to add a subject
            GestureDetector(
              child: Container(
                height: 80.0,
                width:150.0,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [BoxShadow(
                    color: Colors.black12,
                    offset: Offset(
                      5.0,
                      5.0,
                    ),
                    blurRadius: 10.0,
                    spreadRadius: 2.0
                  )]

                ),
                alignment: Alignment.center,
                child: Text("Add a Subject",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  fontSize: 20.0,
                ),),
              ),

             onTap: (){
                this.setState(() {
                  n++;
                });
             },
            ),


            //Creating button to calculate the cgpa
            GestureDetector(
              child: Container(
                height: 80.0,
                width:150.0,
                decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(
                          5.0,
                          5.0,
                        ),
                        blurRadius: 10.0,
                        spreadRadius: 2.0
                    )
                    ],

                ),
                alignment: Alignment.center,
                child: Text("Calculate",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w800,
                ),),
              ),
            ),


          ],
        ),



      ],
    );
  }
}

