import 'package:flutter/material.dart';

class CarouselSlider extends StatefulWidget {
  const CarouselSlider({super.key});

  @override
  State<CarouselSlider> createState() => _CarouselSliderState();
}

class _CarouselSliderState extends State<CarouselSlider>
    with TickerProviderStateMixin {
  List<String> assets = [
    'assets/images/Image.png'
  ];
  final color = [
    Colors.red,
  ];

  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: SingleChildScrollView(
              child: Column(children: [
                const SizedBox(
                  height: 12,
                ),
                SizedBox(
                  height: 550,
                  width: MediaQuery.of(context).size.width,
                  child: PageView.builder(
                    physics: BouncingScrollPhysics(),
                    controller:
                    PageController(initialPage: 3, viewportFraction: 0.85),
                    itemBuilder: (context, index) {
                      print(index % assets.length);
                      return Container(
                        margin: const EdgeInsets.all(8),
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          //  color: color[index],
                            borderRadius: BorderRadius.circular(25)),
                        child: Image.asset(
                          assets[index % assets.length],
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  ),
                ),
              ]),
            )));
  }
}