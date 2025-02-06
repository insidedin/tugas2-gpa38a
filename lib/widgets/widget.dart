import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

inputController(controller, icon, label1) {
  return TextField(
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: icon,
        hintText: label1,
        hintStyle: GoogleFonts.poppins(),
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(255, 1, 20, 54)),
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(255, 1, 20, 54)),
          borderRadius: BorderRadius.circular(15),
        ),
      ));
}

textView(margin, text, posisi, fontColor, fontWeight, fontSize) {
  return Container(
    margin: margin,
    child: Text(
      text,
      textAlign: posisi,
      style: GoogleFonts.poppins(
        color: fontColor,
        fontWeight: fontWeight,
        fontSize: fontSize,
      ),
    ),
  );
}

appBar() {
  return AppBar(
    backgroundColor: Colors.white,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 40,
          margin: const EdgeInsets.only(right: 5, left: 10),
          child: Image.asset('images/logo-bg.png'),
        ),
        textView(
          EdgeInsets.all(0),
          'Sporty & Healthy',
          TextAlign.center,
          Colors.black,
          FontWeight.w500,
          14,
        ),
      ],
    ),
    automaticallyImplyLeading: false,
  );
}

/// Tambahan Widget untuk Daily Ruby (Home)
saldoItem({required IconData icon, required String label}) {
  return Row(
    children: [
      Icon(icon, color: Colors.pink),
      const SizedBox(width: 8),
      textView(
        EdgeInsets.zero,
        label,
        TextAlign.center,
        Colors.black,
        FontWeight.bold,
        16,
      ),
    ],
  );
}

class menuItem extends StatelessWidget {
  final String label;

  const menuItem({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.pink.shade100,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: textView(
          EdgeInsets.zero,
          label,
          TextAlign.center,
          Colors.black,
          FontWeight.bold,
          14,
        ),
      ),
    );
  }
}

/// Tambahan Widget untuk Fly (Home)
class FlightInfoRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const FlightInfoRow({
    Key? key,
    required this.icon,
    required this.label,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.blue),
        const SizedBox(width: 8),
        textView(
          EdgeInsets.only(top: 20, left: 10),
          label,
          TextAlign.left,
          Colors.grey,
          FontWeight.w400,
          16,
        ),
        const Spacer(),
        Text(
          value,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class FlightDateInfo extends StatelessWidget {
  final String label;
  final String date;

  const FlightDateInfo({
    Key? key,
    required this.label,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        textView(
          EdgeInsets.only(top: 20, left: 10),
          label,
          TextAlign.left,
          Colors.grey,
          FontWeight.w400,
          16,
        ),
        const SizedBox(height: 4),
        textView(
          EdgeInsets.only(top: 20, left: 10),
          date,
          TextAlign.left,
          Colors.grey,
          FontWeight.w400,
          16,
        ),
      ],
    );
  }
}

class UpcomingFlightCard extends StatelessWidget {
  final String date;
  final String departureTime;
  final String arrivalTime;
  final String from;
  final String to;
  final String fromCity;
  final String toCity;

  const UpcomingFlightCard({
    Key? key,
    required this.date,
    required this.departureTime,
    required this.arrivalTime,
    required this.from,
    required this.to,
    required this.fromCity,
    required this.toCity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                textView(
                  EdgeInsets.only(top: 20, left: 10),
                  date,
                  TextAlign.left,
                  Colors.grey,
                  FontWeight.w400,
                  16,
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                textView(
                  EdgeInsets.only(top: 20, left: 10),
                  departureTime,
                  TextAlign.left,
                  Colors.grey,
                  FontWeight.w400,
                  16,
                ),
                const Spacer(),
                Icon(Icons.arrow_forward, color: Colors.blue),
                const Spacer(),
                textView(
                  EdgeInsets.only(top: 20, left: 10),
                  arrivalTime,
                  TextAlign.left,
                  Colors.grey,
                  FontWeight.w400,
                  16,
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textView(
                      EdgeInsets.only(top: 20, left: 10),
                      from,
                      TextAlign.left,
                      Colors.grey,
                      FontWeight.w400,
                      16,
                    ),
                    textView(
                      EdgeInsets.only(top: 20, left: 10),
                      fromCity,
                      TextAlign.left,
                      Colors.grey,
                      FontWeight.w400,
                      16,
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    textView(
                      EdgeInsets.only(top: 20, left: 10),
                      to,
                      TextAlign.left,
                      Colors.grey,
                      FontWeight.w400,
                      16,
                    ),
                    textView(
                      EdgeInsets.only(top: 20, left: 10),
                      toCity,
                      TextAlign.left,
                      Colors.grey,
                      FontWeight.w400,
                      16,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


///Tambahan Widget untuk Mechanicare (Home)
Widget menuTile(String title, IconData icon) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 4.0,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40, color: Colors.black),
          const SizedBox(height: 8),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }