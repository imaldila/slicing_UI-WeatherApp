import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const double kHorPadding = 24.0;
const double kVerPadding = 48.0;
const double kPadding = 16;

const kWhiteColor = Colors.white;
const kBlueSoftColor = Color(0xFF444E72);
const kBlueSoftLightColor = Color(0xFF838BAA);

final kTextStyleMap100 = GoogleFonts.overpass(
  fontSize: 100,
  color: kWhiteColor,
);
final kTextStyleMap24 = GoogleFonts.overpass(
  fontSize: 24,
  color: kWhiteColor,
);

final kTextStyleMap24Blue = GoogleFonts.overpass(
  fontSize: 24,
  color: kBlueSoftColor,
);

final kTextStyleMap18 = GoogleFonts.overpass(
  fontSize: 18,
  color: kWhiteColor,
);

final kTextStyle18 = GoogleFonts.overpass(
  fontSize: 18,
  color: kBlueSoftColor,
);

final kTextStyle18Light = GoogleFonts.overpass(
  fontSize: 18,
  color: kBlueSoftLightColor,
);

final kTextStyle12SoftLight = GoogleFonts.overpass(
  fontSize: 12,
  color: kBlueSoftLightColor,
);

final kTextStyle14SoftLight = GoogleFonts.overpass(
  fontSize: 14,
  color: kBlueSoftLightColor,
);

final kTextStyle14SoftLightBold = GoogleFonts.overpass(
  fontSize: 14,
  color: kBlueSoftLightColor,
  fontWeight: FontWeight.bold,
);

final kTextStyle14Bold = GoogleFonts.overpass(
  fontSize: 14,
  color: Colors.black,
  fontWeight: FontWeight.bold,
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
