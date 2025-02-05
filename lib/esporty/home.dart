import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tugas2_gpa38a/widgets/widget.dart';

class SportHome extends StatefulWidget {
  const SportHome({super.key});

  @override
  State<SportHome> createState() => _SportHomeState();
}

class _SportHomeState extends State<SportHome> {
  final List<String> imgList = [
    'images/1.jpg',
    'images/2.jpg',
    'images/3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 20),

              // list gambar depan
              CarouselSlider(
                options: CarouselOptions(
                  height: 250,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  enlargeCenterPage: true,
                  scrollPhysics: const BouncingScrollPhysics(),
                ),
                items: imgList.map((item) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        item,
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width,
                        errorBuilder: (context, error, stackTrace) => Container(
                          color: Colors.grey[300],
                          child: const Center(
                            child: Icon(Icons.image_not_supported,
                                color: Colors.grey, size: 50),
                          ),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),

              // list menu course
              textView(
                    EdgeInsets.only(top: 20, left: 10),
                    'Kategori Olahraga',
                    TextAlign.left,
                    Colors.black,
                    FontWeight.w500,
                    16,
                  ),
            ],
          ),
        ),
      ),
    );
  }
}