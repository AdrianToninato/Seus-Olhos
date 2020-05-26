import 'package:flutter/material.dart';
import '../ajuda.dart';
import '../sobre_nos.dart';

class MenuLateral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //parte do menu hamburguinho
    return  Drawer(
            child: Container(
             decoration: BoxDecoration( 
               gradient: LinearGradient(
                 begin: Alignment.topCenter,
                 end: Alignment.bottomCenter,  
                 stops: [0.3, 1.0],
                 colors: [Color(0xFF00859B), Color(0XFF00BBCD)],
                 ),
               ),
              
              
              //#00859B
                child: ListView(
                  children: <Widget>[


                      //elemento que fecha o menu 
                             Padding(
                               padding: const EdgeInsets.only(left: 100.0),
                               child: ListTile(
                                              leading: Icon(Icons.close, color: Colors.white,),
                                  title: Text(
                                    'FECHAR', 
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),),
                                  onTap: () {
                                    //atributo que fecha o menu
                                    Navigator.pop(context);
                                  },
                                ),
                             ),

                       
                      
                       Divider(
                          color: Colors.white12,
                          height: 2,
                          thickness: 2,
                      ),

                      SizedBox(height: 170,),

                       ListTile( 
                        leading: SizedBox(
                          height: 30,
                          width: 30,
                          child: Image.asset('assets/images/help.png'),
                          ),
                        title: Text(
                          'AJUDA',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            ),
                        ),
                        onTap: (){
                         //ao retornar da página fecha o menu hamburguinho
                          Navigator.of(context).pop();

                          //constroi a página de ajuda
                          Navigator.push(context, new MaterialPageRoute(
                            builder: (BuildContext context) => Ajuda()),
                          );
                        },
                      ),
                      
                      Divider(
                          color: Colors.white12,
                          height: 5,
                          thickness: 2,
                      ),

                      ListTile( 
                         leading: SizedBox(
                          height: 30,
                          width: 30,
                          child: Image.asset('assets/images/info.png'),
                          ),
                        title: Text(
                          'SOBRE-NÓS',
                           style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            ),
                        ),
                        onTap: (){
                          //ao retornar da página fecha o menu hamburguinho
                          Navigator.of(context).pop();

                          //constroi a pagina sobre nos
                          Navigator.push(context, new MaterialPageRoute(
                            builder: (BuildContext context) => Sobre_Nos()),
                          );
                        },
                      ),

                      Divider(
                          color: Colors.white12,
                          height: 5,
                          thickness: 2,
                      ),

                  ],

              ),
            ),
          );
  }
}