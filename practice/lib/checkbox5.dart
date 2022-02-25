import 'package:flutter/material.dart';

class CheckBoxValueDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Flutter Radio Button Group Selected Item"),
          ),
          body: SafeArea(
              child : Center(

                child:RadioGroup(),

              ),
          ),
      ),
    );
  }
}

class RadioGroup extends StatefulWidget {
  @override
  _RadioGroupState createState() => _RadioGroupState();
}

class Gender {
  String gender;
  int index;
  Gender({required this.gender, required this.index});

}

class _RadioGroupState extends State <RadioGroup>{

  // Default Radio Button Selected Item.
  String radioItemHolder = 'Male';

  bool chkvalue = false;
  // Group Value for Radio Button.
  int id = 1;

  List<Gender> genderName = [
    Gender(
      index: 1,
      gender: "Male",
    ),
    Gender(
      index: 2,
      gender: "Female",
    ),
    Gender(
      index: 3,
      gender: "Other",
    ),

  ];

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[

        Padding(
            padding : EdgeInsets.all(14.0),
            child: Text('Selected Item = '+'$radioItemHolder', style: TextStyle(fontSize: 20))
        ),

        Expanded(
            child: Container(
              height: 350.0,
              child: Column(
                children:
                genderName.map((data) => CheckboxListTile(
                  title: Text("${data.gender}"),
                  //groupValue: id,
                  value: chkvalue,
                  onChanged: (val) {
                    setState(() {
                      //radioItemHolder = data.gender ;
                      id = data.index;
                      chkvalue = val!;
                    });
                  },
                )).toList(),
              ),
            )),
      ],
    );
  }
}