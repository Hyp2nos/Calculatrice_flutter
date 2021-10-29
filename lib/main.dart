import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Simple Calculateur',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Widget buildButton(String buttonText , double buttonHeight, Color buttonColor){
     return  Container(
       height: MediaQuery.of(context).size.height  * 0.1 * buttonHeight,
       color: buttonColor,
       child: FlatButton(
           shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(0.0),
               side: BorderSide(
                   color: Colors.white, width: 1, style: BorderStyle.solid
               )
           ),
           padding: EdgeInsets.all(16.0),
           onPressed: null,
           child: Text(
             buttonText,
             style: TextStyle(
                 fontSize: 30,
                 fontWeight: FontWeight.normal,
                 color: Colors.white
             ),
           )
       ),
     );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calculatrice')),
      body: Column(
        children: <Widget> [

          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.fromLTRB(10, 20, 10, 0 ),
            child: Text("0", style: TextStyle(fontSize: 30),),
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.fromLTRB(10, 30, 10, 0 ),
            child: Text("0", style: TextStyle(fontSize: 40),),
          ),
          Expanded(child: Divider(),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              Container(
                width: MediaQuery.of(context).size.width * .75,
                child: Table(
                  children: [
                    TableRow(
                      children: [
                         buildButton("C", 1, Colors.redAccent),
                         buildButton("del", 1, Colors.blue),
                         buildButton("+", 1, Colors.blue),
                      ],
                    ),
                    TableRow(
                      children: [
                         buildButton("7", 1, Colors.black54),
                         buildButton("8", 1, Colors.black54),
                         buildButton("9", 1, Colors.black54),
                      ],
                    ),
                    TableRow(
                      children: [
                         buildButton("4", 1, Colors.black54),
                         buildButton("5", 1, Colors.black54),
                         buildButton("6", 1, Colors.black54),
                      ],
                    ),
                    TableRow(
                      children: [
                         buildButton("1", 1, Colors.black54),
                         buildButton("2", 1, Colors.black54),
                         buildButton("3", 1, Colors.black54),
                      ],
                    ),
                    TableRow(
                      children: [
                         buildButton(".", 1, Colors.black54),
                         buildButton("0", 1, Colors.black54),
                         buildButton("00", 1, Colors.black54),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.25,
                child: Table(
                  children: [
                    TableRow(
                      children: [
                        buildButton("x", 1, Colors.blue),
                      ],
                    ),
                    TableRow(
                      children: [
                        buildButton("-", 1, Colors.blue),
                      ],
                    ),
                    TableRow(
                      children: [
                        buildButton("+", 1, Colors.blue),
                      ],
                    ),
                    TableRow(
                      children: [
                        buildButton("=", 2, Colors.redAccent),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
