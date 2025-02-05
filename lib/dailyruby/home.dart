import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tugas2_gpa38a/widgets/widget.dart';

class DailyHome extends StatefulWidget {
  const DailyHome({super.key});

  @override
  State<DailyHome> createState() => _DailyHomeState();
}

class _DailyHomeState extends State<DailyHome> {
  final List<String> imgList = [
    'images/1.jpg',
    'images/2.jpg',
    'images/3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDE7F3),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Pencarian Bar
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    children: const [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Icon(Icons.search, color: Colors.pink),
                    ],
                  ),
                ),
                const SizedBox(height: 16),

                // Saldo & Pembayaran
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.pink.shade100,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      saldoItem(
                        icon: Icons.qr_code,
                        label: '1.000.000',
                      ),
                      saldoItem(
                        icon: Icons.monetization_on,
                        label: '10',
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pink,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: textView(
                          EdgeInsets.zero,
                          'Transfer',
                          TextAlign.center,
                          Colors.white,
                          FontWeight.w600,
                          14,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),

                // Promo Banner Carousel
                CarouselSlider(
                  options: CarouselOptions(
                    height: 180,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    enlargeCenterPage: true,
                    viewportFraction: 0.9,
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
                          errorBuilder: (context, error, stackTrace) =>
                              Container(
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
                const SizedBox(height: 24),

                // Menu Aplikasi
                textView(
                  EdgeInsets.zero,
                  'Category',
                  TextAlign.left,
                  Colors.black,
                  FontWeight.bold,
                  18,
                ),
                const SizedBox(height: 16),
                Wrap(
                  spacing: 16,
                  runSpacing: 16,
                  children: const [
                    menuItem(label: 'Alpha Clinic\nRegistration'),
                    menuItem(label: 'All Product'),
                    menuItem(label: 'Alpha Salon'),
                    menuItem(label: 'Alpha Slim\n(Coming Soon)'),
                    menuItem(label: 'Product\nRecommendation'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
