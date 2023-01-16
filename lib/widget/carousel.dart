import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';



class Carousel extends StatelessWidget {
  const Carousel({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      'https://raw.githubusercontent.com/flutter/website/main/examples/layout/lakes/step5/images/lake.jpg',
      'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0f/20190725_Oeschinensee-Panorama%2C_Kandersteg_%2806540-42_stitch%29.jpg/1200px-20190725_Oeschinensee-Panorama%2C_Kandersteg_%2806540-42_stitch%29.jpg',
    ];
    return SizedBox(
      width: double.infinity,
      height: 240,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Image.network(
            images[index],
            fit: BoxFit.cover,
          );
        },
        itemCount: 2,
        pagination: const SwiperPagination(),
        control: const SwiperControl(),
      ),
    );
  }
}