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
          'E-Learning Palcomtech',
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
