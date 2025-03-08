import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
abstract class Styles{
  static  TextStyle style25= TextStyle(
    fontSize: 25.0,
    fontWeight: FontWeight.w500,
    color: Colors.black,
    fontFamily: GoogleFonts.inter().fontFamily
  );
  static  TextStyle style22= TextStyle(
      fontSize: 22.0,
      fontWeight: FontWeight.w500,
      color: Colors.black,
      fontFamily: GoogleFonts.inter().fontFamily
  );
  static  TextStyle style18= TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w400,
      color: Colors.black,
      fontFamily: GoogleFonts.inter().fontFamily
  );
  static  TextStyle style24= TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
      fontFamily: GoogleFonts.inter().fontFamily
  );
}