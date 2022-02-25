import 'package:flutter/material.dart';

class ListWithCheckBoxDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         title: Text('ListWithCheckBoxDemo'),
       ),
         body: SafeArea(
             child : Center(

               child:MyListCheckBoxDemo(),

             )
         )
     ),
   );
  }
}

class MyListCheckBoxDemo extends StatefulWidget {

  _MyListCheckBoxState createState() => _MyListCheckBoxState();

}

class _MyListCheckBoxState extends State<MyListCheckBoxDemo>{

  Map<String, bool> values = {
    'Apple': false,
    'Banana': false,
    'Cherry': false,
    'Mango': false,
    'Orange': false,
  };

  var tmpArray = [];

  getCheckboxItems(){

    values.forEach((key, value) {
      if(value == true)
      {
        tmpArray.add(key);
      }
    });
    tmpArray.clear();

}
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column (children: <Widget>[

      ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.greenAccent,
        ),
        child: Text(" Get Selected Checkbox Items ", style: TextStyle(fontSize: 18, color: Colors.white,)),
        onPressed: getCheckboxItems,
      ),

      Expanded(
        child :
        ListView(
          children: values.keys.map((String key) {
            return new CheckboxListTile(
              title: new Text(key),
              value: values[key],
              activeColor: Colors.pink,
              checkColor: Colors.white,
              onChanged: (bool? value) {
                setState(() {
                  values[key] = value!;
                });
              },
            );
          }).toList(),
        ),
      ),

    ],
    );
  }
}
