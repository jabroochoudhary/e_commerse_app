import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../App Theme/AppColors.dart';

// import 'color.dart';

class AppText {
  AppText._();
  static nameText(
    text, {
    textAlignment = TextAlign.center,
    color = AppColors.blackColor,
    double fontsize = 16.0,
    feildOverFlow = TextOverflow.ellipsis,
    maxlines,
    FontWeight fontweight = FontWeight.w500,
    double height = 1.2,
  }) {
    return Text(
      text.toString(),
      textAlign: textAlignment,
      overflow: feildOverFlow,
      maxLines: maxlines,
      style: GoogleFonts.jost(
        color: color,
        fontSize: fontsize,
        height: height,
        fontWeight: fontweight,
      ),
    );
  }

  static text(
    text, {
    textAlignment = TextAlign.center,
    color = AppColors.blackColor,
    double fontsize = 16.0,
    double leterScpacing = 0,
    feildOverFlow = TextOverflow.ellipsis,
    maxlines,
    FontWeight fontweight = FontWeight.w500,
    double height = 1.2,
  }) {
    return Text(
      text.toString(),
      textAlign: textAlignment,
      overflow: feildOverFlow,
      maxLines: maxlines,
      style: TextStyle(
        color: color,
        fontSize: fontsize,
        letterSpacing: leterScpacing,
        height: height,
        fontWeight: fontweight,
      ),
    );
  }

  pageTitle({
    @required text,
    textAlignment = TextAlign.center,
    color = AppColors.blackColor,
    double fontsize = 18.0,
    feildOverFlow = TextOverflow.ellipsis,
    maxlines,
    FontWeight fontweight = FontWeight.w600,
  }) {
    return Text(
      text.toString(),
      textAlign: textAlignment,
      overflow: feildOverFlow,
      maxLines: maxlines,
      style: GoogleFonts.rajdhani(
        color: color,
        fontSize: fontsize,
        fontWeight: fontweight,
      ),
    );
  }
}
