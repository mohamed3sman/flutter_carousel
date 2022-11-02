import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: CarouselSlider(
          slideTransform: CubeTransform(),
          unlimitedMode: true,
          slideIndicator: CircularStaticIndicator(
            padding: EdgeInsets.only(bottom: 20),
            enableAnimation: true,
            indicatorBorderColor: Colors.pink[400],
            indicatorBorderWidth: 2,
            indicatorRadius: 6,
            currentIndicatorColor: Colors.white,
          ),
          children: [
            Container(
              color: Colors.deepPurple[500],
            ),
            Container(
              color: Colors.pink,
            ),
            Container(
              color: Colors.blue,
            ),
          ]),
    );
  }
}
