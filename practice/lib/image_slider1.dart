import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class ImageSliderDemo1 extends StatelessWidget{
  const ImageSliderDemo1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Image Slider',
      home: MySlider(),
    );
  }
}

class MySlider extends StatefulWidget {

  _MySliderState createState() => _MySliderState();

}
class _MySliderState extends State <MySlider>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        child: Center(
          child: ListView(
            children: [
              SizedBox(
                height: 500,
                width: 500,
                child: Carousel(
                  images: [
                    Image.asset('images/1.jpg'),
                    Image.asset('images/2.jpg'),
                    Image.asset('images/3.jpg'),
                    Image.asset('images/4.jpg'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}