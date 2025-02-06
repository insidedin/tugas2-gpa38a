import 'package:flutter/material.dart';
import 'package:tugas2_gpa38a/widgets/widget.dart';

class CareHome extends StatefulWidget {
  const CareHome({super.key});

  @override
  State<CareHome> createState() => _CareHomeState();
}

class _CareHomeState extends State<CareHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE0E0E0), // Background texture color
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: textView(
                    EdgeInsets.only(top: 20, left: 10),
                    'MECHANICARE',
                    TextAlign.left,
                    Colors.black,
                    FontWeight.bold,
                    25,
                  ),
              ),

              // Calendar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Column(
                    children: [
                      Icon(
                        Icons.calendar_today,
                        size: 40,
                        color: Colors.black,
                      ),
                      const SizedBox(height: 8),
                      GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 7,
                          crossAxisSpacing: 4.0,
                          mainAxisSpacing: 4.0,
                        ),
                        itemCount: 31,
                        itemBuilder: (context, index) {
                          return Center(
                            child: Text(
                              '${index + 1}',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Options Grid
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                  children: [
                    menuTile('CONTACT US', Icons.chat_bubble_outline),
                    menuTile('CATATAN KENDARAAN', Icons.directions_car),
                    menuTile('SETEL PENGINGAT', Icons.alarm),
                    menuTile('FAQ', Icons.help_outline),
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
