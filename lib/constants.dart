import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const double kHorPadding = 24.0;
const double kVerPadding = 48.0;
const double kPadding = 16;

const kWhiteColor = Colors.white;
const kBlueSoftColor = Color(0xFF444E72);

final kTextStyleMap100 = GoogleFonts.overpass(
  fontSize: 100,
  color: kWhiteColor,
);
final kTextStyleMap24 = GoogleFonts.overpass(
  fontSize: 24,
  color: kWhiteColor,
);

final kTextStyleMap18 = GoogleFonts.overpass(
  fontSize: 18,
  color: kWhiteColor,
);

final kTextStyle18 = GoogleFonts.overpass(
  fontSize: 18,
  color: kBlueSoftColor,
);

final kBoxDecoration = BoxDecoration(
  color: Colors.white.withOpacity(0.3),
  border: Border.all(
    color: Colors.white,
    width: 1,
    style: BorderStyle.solid,
  ),
  borderRadius: BorderRadius.circular(20),
);
