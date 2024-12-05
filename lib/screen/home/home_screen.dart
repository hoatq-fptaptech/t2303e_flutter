
import 'package:flutter/material.dart';
import 'package:t2303e_flutter/screen/home/ui/banner_slider.dart';
import 'package:t2303e_flutter/screen/home/ui/latest_product.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          BannerSlider(),
          LatestProduct(),
          Text("Section 3"),
          Text("Section 4")
        ],
      ),
    );
  }
}