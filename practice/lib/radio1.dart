import 'package:flutter/material.dart';

class RadioDemo1 extends StatelessWidget {
  const RadioDemo1({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const Center(
          child: MyStatefulWidget(),
        ),
      ),
    );
  }
}

enum Gender { Male, Female }

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  Gender? _genderValue = Gender.Male;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Male'),
          leading: Radio<Gender>(
            value: Gender.Male,
            groupValue: _genderValue,
            onChanged: (Gender? value) {
              setState(() {
                _genderValue = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Female'),
          leading: Radio<Gender>(
            value: Gender.Female,
            groupValue: _genderValue,
            onChanged: (Gender? value) {
              setState(() {
                _genderValue = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
