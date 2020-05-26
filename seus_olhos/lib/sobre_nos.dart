import 'package:flutter/material.dart';

class Sobre_Nos extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Sobre_Nos> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
        backgroundColor: Colors.white,
         appBar: AppBar( 
           title: Padding(
             padding: EdgeInsets.only(left:50,),
             child: Text(
               'SOBRE NÓS',
              
               style: TextStyle( 
                 fontSize: 15,
               ),

               ),
           ),
           backgroundColor: Color(0xFF00859B),
         ),

      body: Container( 
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child:ListView(
            children: <Widget>[
             
             //parte de cima com o LOGO
              Center( 
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      'assets/blue.png',
                       height: 80,
                
                     ),

                      SizedBox(height: 15,),

                     Text(
                       'SEUS OLHOS',
                       style: TextStyle(color: Color(0xFF00859B)),
                     )
                  ],
                 ),
                ),
            
            //espaço entre conteudos
            SizedBox(height: 20,),

            //parte do texto
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tempus laoreet suscipit. Curabitur sed turpis nisl. Vivamus tempus condimentum enim. Vestibulum ultricies massa varius.',
                  style: TextStyle( 
                    color: Colors.black54,
                    fontSize: 12,
                  ),
                  ),
            ),
            

            //espaço entre conteudos
            SizedBox(height: 20,),

          //texto do contate-nos em negrito
            Center(
              child: Column(
                children: <Widget>[

                  Text(
                    'Precisa de mais ajuda?',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),

                  Text(
                    'Contate-nos:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                    ),

                ],
              ),
            ),

             //espaço entre conteudos
            SizedBox(height: 20,),

            //links
            Center(
              child: Column(
                children: <Widget>[
                  
                  Text(
                    'Loremipsum@lorem.com',
                    style: TextStyle( 
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                      ),
                    ),


                  SizedBox(height: 15,),

                  Text(
                    'TERMOS DE USO',
                     style: TextStyle( 
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold,
                      ),
                    ),


                ],
              ),
              ),

               //espaço entre conteudos
            SizedBox(height: 80,),

            Center(
              child: RaisedButton(
                child: Text(
                        'VOLTAR',
                         style: TextStyle( 
                          color: Colors.blue,
                          ),
                        ),
                    elevation: 0.0,
                    color: Colors.white,
                      onPressed: (){
                        //ao retornar da página fecha o menu hamburguinho
                          Navigator.of(context).pop();
                      },
              ),
            ),

              


            ],
          ),
        ),
        ),
    );
  }
}