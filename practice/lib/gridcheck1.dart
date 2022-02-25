import 'package:flutter/material.dart';

class GridCheck1 extends StatelessWidget{

  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('List Checkbox Demo'),
        ),
        body: MyGridCheckDemo(),
      ),
    );

  }
}

class MyGridCheckDemo extends StatefulWidget {
  @override
  _MyGridCheckState createState() => _MyGridCheckState();
}

class _MyGridCheckState extends State<MyGridCheckDemo> {
  var selectedItem;
  bool selecteValue = false;

  List<GridCheckModel> checkBoxListTileModel = GridCheckModel.getUsers();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title:  Text(
          'CheckBox ListTile Demo',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Container(
padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
            child: Text('Selected Item: ${selectedItem}'+ ', ' + ' Selected Value: ${selecteValue}', style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),),

          ),
        Expanded(
            child: GridView.builder(

                shrinkWrap: true,

                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0,
                ),
                itemCount: 12,

                itemBuilder: (BuildContext context, int index) {


                  return Card(

                    elevation: 20,

                    color: Colors.orange,

                    child: Container(

                      padding: EdgeInsets.all(10.0),

                      child: Column(

                        children: <Widget>[

                          CheckboxListTile(
                            //checkColor: Colors.indigo,
                              tileColor: Colors.greenAccent,
                              controlAffinity: ListTileControlAffinity.trailing,
                              activeColor: Colors.pink[300],
                              dense: true,

                              //font change
                              title: Text(

                                checkBoxListTileModel[index].title,

                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.5,
                                ),
                              ),
                              value: checkBoxListTileModel[index].isCheck,

                              onChanged: (bool? newValue) {
                                //itemChange(newValue!, index);
                                setState(() {
                                  checkBoxListTileModel[index].isCheck = newValue!;
                                  if(checkBoxListTileModel[index].isCheck) {
                                    selectedItem = checkBoxListTileModel[index].title;
                                    selecteValue =  checkBoxListTileModel[index].isCheck;
                                  }
                                  else{
                                    selectedItem = '';
                                    selecteValue = checkBoxListTileModel[index].isCheck;
                                  }
                                });
                              }
                              ),
                        ],
                      ),
                    ),
                  );
                }
            ),
          )
        ],
      ),
    );
  }

  void itemChange(bool val, int index) {
    setState(() {
      checkBoxListTileModel[index].isCheck = val;
    });
  }
}
class GridCheckModel {
  int userId;
  String title;
  bool isCheck;

  GridCheckModel({required this.userId, required this.title, required this.isCheck});

  static List<GridCheckModel> getUsers() {
    return <GridCheckModel>[

      GridCheckModel(
          userId: 1,
          title: "Android",
          isCheck: false),
      GridCheckModel(
          userId: 2,
          title: "Flutter",
          isCheck: false),
      GridCheckModel(
          userId: 3,
          title: "IOS",
          isCheck: false),
      GridCheckModel(
          userId: 4,
          title: "PHP",
          isCheck: false),
      GridCheckModel(
          userId: 5,
          title: "Node",
          isCheck: false),
      GridCheckModel(
          userId: 6,
          title: "c#",
          isCheck: false),
      GridCheckModel(
          userId: 7,
          title: "C",
          isCheck: false),
      GridCheckModel(
          userId: 8,
          title: "C++",
          isCheck: false),
      GridCheckModel(
          userId: 9,
          title: "React",
          isCheck: false),
      GridCheckModel(
          userId: 10,
          title: "Ruby",
          isCheck: false),
      GridCheckModel(
          userId: 11,
          title: ".Net",
          isCheck: false),
      GridCheckModel(
          userId: 12,
          title: "Cobol",
          isCheck: false),
    ];
  }
}