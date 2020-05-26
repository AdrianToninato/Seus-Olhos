import 'package:flutter/material.dart';

class Ajuda extends StatefulWidget {
  @override
  _AjudaState createState() => _AjudaState();
}

class _AjudaState extends State<Ajuda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

         appBar: AppBar( 
           title: Padding(
             padding: EdgeInsets.only(left:50,),
             child: Text(
               'AJUDA',
              
               style: TextStyle( 
                 fontSize: 15,
               ),

               ),
           ),
           backgroundColor: Color(0xFF00859B),
         ),


      body: Text('ajuda'),
    );
  }
}