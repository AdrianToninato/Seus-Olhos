import 'package:flutter/material.dart';

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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: 420.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [
                      0.3,
                      1.0,
                    ],
                    colors: [
                      Color(0xFF00859B),
                      Color(0xFF00BBDC),
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(75),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(
                        0.4,
                      ),
                      blurRadius: 10.0,
                      offset: Offset(
                        3.0,
                        3.0,
                      ),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'SEUS OLHOS',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Image.asset(
                      'assets/images/white.png',
                      height: 150.0,
                      width: 150.0,
                      semanticLabel:
                          "Logo do aplicativo. Desenho de um celular com um olho no centro",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Container(
                height: 60.0,
                width: 140.0,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [
                      0.3,
                      1.0,
                    ],
                    colors: [
                      Color(0xFF00859B),
                      Color(0XFF00BBCD),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: FlatButton(
                  onPressed: () {},
                  child: Center(
                    child: Text(
                      "INICIAR",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Text(
                "\© Todos os direitos reservados.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
