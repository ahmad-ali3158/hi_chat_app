import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextTheme {
  static final one = GoogleFonts.aBeeZee();
  static final two = GoogleFonts.roboto();
  static final three = GoogleFonts.kadwa();
  static final four = GoogleFonts.abrilFatface();
  static final five = GoogleFonts.aclonicaTextTheme();
  static final six = GoogleFonts.oxygen();

}

class FontTemplate extends StatelessWidget {
  FontTemplate(
      {Key? key,
      required this.text,
      this.textcolor,
      required this.SizeofFont,
      this.WeightofFont})
      : super(key: key);
  String text;
  final textcolor;
  double SizeofFont;
  final WeightofFont;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.cabin(
          textStyle: TextStyle(
        color: textcolor,
        fontSize: SizeofFont,
        fontWeight: WeightofFont,
      )),
    );
  }
}
