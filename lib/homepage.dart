import 'package:flutter/material.dart';
import 'remaining.dart';
class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: CustomScrollView(
     slivers: [
       SliverAppBar(
         pinned: true,
         expandedHeight: 170.0,
         flexibleSpace: FlexibleSpaceBar(
           title:Text("CGPA Calculator",style: TextStyle(fontSize: 10.0),),
           background: Image.asset('lib/asset/calculater(1)_gif.gif',fit: BoxFit.fill,),

         ),
       ),
       SliverFillRemaining(
         child:remaining()
       )
     ],
      ),
    );
  }
}
