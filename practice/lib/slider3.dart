import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageSlider extends StatelessWidget{

  final List<String> imageList = [
    'http://i.imgur.com/zuG2bGQ.jpg',
    'http://i.imgur.com/ovr0NAF.jpg',
    'https://i.imgur.com/pSHXfu5.jpg',
    'http://i.imgur.com/3wQcZeY.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         title: Text('Image Slider Demo'),
       ),
       body: Center(
         child: CarouselSlider(
           options: CarouselOptions(
             enlargeCenterPage: true,
             enableInfiniteScroll: false,
             autoPlay: true,
           ),
           items: imageList.map((e) => ClipRRect(
             borderRadius: BorderRadius.circular(8),
             child: Stack(
               fit: StackFit.expand,
               children: <Widget>[
                 Image.network(e,
                 width: 1000,
                   height: 200,
                   fit: BoxFit.cover,
                 )
               ],
             ),
           )).toList(),
         ),
       ),
     ),
   );
  }
}