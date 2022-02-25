import 'package:flutter/material.dart';

class IndexedDemo1 extends StatelessWidget{
  const IndexedDemo1({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         title: Text('Indexed Stack Demo'),
       ),
       body: MyIndexedStack(),
     ),
   );
  }
}

class MyIndexedStack extends StatefulWidget{

  @override
  _MyIndexedStackState createState() => _MyIndexedStackState();

}

class _MyIndexedStackState extends State<MyIndexedStack> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Center(
    child: IndexedStack(
      index: 0,
      children: <Widget>[
        Container(
          height: 300,
          width: 400,
          color: Colors.green,
          child: Center(
            child: Text('First Widget', style: TextStyle(color: Colors.white, fontSize: 20),),
          ),
        ),
        Container(
          height: 250,
          width: 250,
          color: Colors.blue,
          child: Center(
            child: Text('First Widget', style: TextStyle(color: Colors.white, fontSize: 20),),

          ),
        ),
        Container(
          height: 250,
          width: 250,
          color: Colors.blue,
          child: Center(
            child: Text(
              'Second Widget', style: TextStyle(color: Colors.white,fontSize: 20),
            ),
          ),
        )
      ],
    ),
   );
  }
}