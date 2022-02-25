import 'package:flutter/material.dart';

class ListCheckDemo1 extends StatelessWidget{

  @override

  Widget build(BuildContext context) {
    // TODO: implement build
   return MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         title: Text('List Checkbox Demo'),
       ),
       body: MyListCheckDemo(),
     ),
   );

  }
}

class MyListCheckDemo extends StatefulWidget {
  @override
  _MyListCheckState createState() => _MyListCheckState();
}

class _MyListCheckState extends State<MyListCheckDemo> {
var selectedItem;

  List<CheckBoxListTileModel> checkBoxListTileModel = CheckBoxListTileModel.getUsers();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title:  Text(
          'CheckBox ListTile Demo',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView.builder(

          shrinkWrap: true,

          itemCount: checkBoxListTileModel.length,

          itemBuilder: (BuildContext context, int index) {


          return Card(

            child: Container(

              padding: EdgeInsets.all(10.0),

              child: Column(

                children: <Widget>[

            CheckboxListTile(

            activeColor: Colors.pink[300],
            dense: true,
            //font change
            title: Text(

              checkBoxListTileModel[index].title,

              style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.5),
            ),
            value: checkBoxListTileModel[index].isCheck,
            secondary: Container(
            height: 50,
            width: 50,
            ),
            onChanged: (bool? newValue) {
            //itemChange(newValue!, index);
            setState(() {
              checkBoxListTileModel[index].isCheck = newValue!;
              if(checkBoxListTileModel[index].isCheck) {
                selectedItem = checkBoxListTileModel[index].title;
              }
              else{
                selectedItem = '';
              }
            });

            }),
            Container(

              child: Text('${checkBoxListTileModel[index].isCheck}'+' ${selectedItem}'),

            )
            ],
            ),
            ),
            );
          }
          ),
    );
  }

  void itemChange(bool val, int index) {
    setState(() {
      checkBoxListTileModel[index].isCheck = val;
    });
  }
}
class CheckBoxListTileModel {
  int userId;
  String title;
  bool isCheck;

  CheckBoxListTileModel({required this.userId, required this.title, required this.isCheck});

   static List<CheckBoxListTileModel> getUsers() {
    return <CheckBoxListTileModel>[

      CheckBoxListTileModel(
          userId: 1,
          title: "Android",
          isCheck: false),
      CheckBoxListTileModel(
          userId: 2,
          title: "Flutter",
          isCheck: false),
      CheckBoxListTileModel(
          userId: 3,
          title: "IOS",
          isCheck: false),
      CheckBoxListTileModel(
          userId: 4,
          title: "PHP",
          isCheck: false),
      CheckBoxListTileModel(
          userId: 5,
          title: "Node",
          isCheck: false),
      CheckBoxListTileModel(
          userId: 6,
          title: "Java Script",
          isCheck: false),
      CheckBoxListTileModel(
          userId: 7,
          title: "C",
          isCheck: false),
      CheckBoxListTileModel(
          userId: 8,
          title: "C++",
          isCheck: false),
      CheckBoxListTileModel(
          userId: 9,
          title: "React",
          isCheck: false),
      CheckBoxListTileModel(
          userId: 10,
          title: "Ruby",
          isCheck: false),
      CheckBoxListTileModel(
          userId: 11,
          title: ".Net",
          isCheck: false),
      CheckBoxListTileModel(
          userId: 12,
          title: "Cobol",
          isCheck: false),
     ];
  }
}