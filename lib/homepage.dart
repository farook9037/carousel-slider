import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';

class CarouselDemo extends StatelessWidget {
  final List<String> imgList = [
    'https://media.istockphoto.com/id/598058914/photo/the-sun-shining-through-a-majestic-oak-tree.jpg?s=1024x1024&w=is&k=20&c=pXd0ViL6SVZplmScjhR2KNy59sc8Zzuo7u9WAGWbMUE=',
    'https://media.istockphoto.com/id/505221662/photo/elephants-in-river.jpg?s=1024x1024&w=is&k=20&c=6H1PzDPfOlCwJQZ8XSUQlkNKBgILDmig7RVqD9utJEY=',
    'https://media.istockphoto.com/id/511593366/photo/tropical-jungle.jpg?s=1024x1024&w=is&k=20&c=PaQdMgEe4omyx5Tt8gLPARiYUSTuckEuFLGfug4tX3o=',
    'https://media.istockphoto.com/id/932650548/photo/aurora-borealis-in-iceland-at-jakulsarlon.jpg?s=1024x1024&w=is&k=20&c=7zL3v0zwUdV2GxjMGvDuqbFZ4Bm0u_Vu50K7XfRNB7Y=',
    'https://media.istockphoto.com/id/1442179368/photo/maldives-island.jpg?s=1024x1024&w=is&k=20&c=xHvA5JdOSrcIKQQUGeh9pxYay9LNM-3tlc2UPjPIdIg=',
  ];

  CarouselDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carousel Slider Example'),
      ),
      body: Center(
        child: CarouselSlider(
          children: imgList
              .map((item) => Center(
                    child: Image.network(item,
                        fit: BoxFit.cover, height: 400.0), // Fixed syntax
                  ))
              .toList(),
        ),
      ),
    );
  }
}
