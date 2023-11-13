import 'package:flutter/material.dart';

class MyCarouselSlider extends StatefulWidget {
  const MyCarouselSlider({super.key});

  @override
  State<MyCarouselSlider> createState() => _MyCarouselSliderState();
}

class _MyCarouselSliderState extends State<MyCarouselSlider>
    with TickerProviderStateMixin {
  List<String> assets = [
    'assets/images/image 1.png',
    'assets/images/image 2.png',
    'assets/images/image 3.png',
  ];
  final color = [
    Colors.red,
    Colors.amber,
    Colors.teal,
  ];

  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: SingleChildScrollView(
              child: Column(children: [
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  height: 250,
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