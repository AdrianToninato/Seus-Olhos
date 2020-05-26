import 'package:flutter/material.dart';
import 'package:seus_olhos/funcoes/menu_lateral.dart';


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      title: "Seus Olhos",
    ),
  );
}

class Home extends StatefulWidget {
  @override 
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override 
  Widget build(BuildContext context) {
        return Scaffold(
            //onde fica a barra na parte de cima
         appBar: AppBar( 
           title: Padding(
             padding: EdgeInsets.only(left:50,),
             child: Text(
              'SEUS OLHOS',
              
               style: TextStyle( 
                 fontSize: 15,
               ),

               ),
           ),
           backgroundColor: Color(0xFF00859B),
         ),

         drawer: MenuLateral(),



     

    
         


          
    );
  } 



}