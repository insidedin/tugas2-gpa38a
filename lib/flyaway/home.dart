import 'package:flutter/material.dart';
import 'package:tugas2_gpa38a/widgets/widget.dart';

class FlyHome extends StatefulWidget {
  const FlyHome({super.key});

  @override
  State<FlyHome> createState() => _FlyHomeState();
}

class _FlyHomeState extends State<FlyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF4682B4),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Image.asset(
                          'images/globe.png',
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          bottom: 10.0,
                          left: 16.0,
                          child: textView(
                            EdgeInsets.only(top: 20, left: 10),
                            'Nikmati Perjalanan\nBersama FLY',
                            TextAlign.left,
                            Colors.white,
                            FontWeight.bold,
                            24,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 8,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          FlightInfoRow(
                            icon: Icons.flight_takeoff,
                            label: 'From',
                            value: 'Jakarta',
                          ),
                          const Divider(),
                          FlightInfoRow(
                            icon: Icons.flight_land,
                            label: 'To',
                            value: 'Bali',
                          ),
                          const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              FlightDateInfo(
                                  label: 'Departure', date: '10 June 2024'),
                              FlightDateInfo(
                                  label: 'Return', date: '12 June 2024'),
                            ],
                          ),
                          const SizedBox(height: 16),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                            ),
                            child: const Text('Search'),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      'Upcoming flights',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 16),
                    UpcomingFlightCard(
                      date: '10 June 2024',
                      departureTime: '08.30 am',
                      arrivalTime: '10.00 am',
                      from: 'CGK',
                      to: 'DPS',
                      fromCity: 'Jakarta',
                      toCity: 'Bali',
                    ),
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
