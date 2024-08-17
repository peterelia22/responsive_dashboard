import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';

abstract class AppStyles {
  static TextStyle regular16(context) {
    return TextStyle(
        color: const Color(0xff064061),
        fontSize: getResponsiveFontSize(context, fontBaseSize: 16),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w400);
  }

  static TextStyle medium16(context) {
    return TextStyle(
      color: const Color(0xff064061),
      fontSize: getResponsiveFontSize(context, fontBaseSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle semiBold16(context) {
    return TextStyle(
      color: const Color(0xff064061),
      fontSize: getResponsiveFontSize(context, fontBaseSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle semiBold20(context) {
    return TextStyle(
      color: const Color(0xff064061),
      fontSize: getResponsiveFontSize(context, fontBaseSize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle regular12(context) {
    return TextStyle(
      color: const Color(0xffAAAAAA),
      fontSize: getResponsiveFontSize(context, fontBaseSize: 12),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle semiBold24(context) {
    return TextStyle(
      color: const Color(0xff4EB7F2),
      fontSize: getResponsiveFontSize(context, fontBaseSize: 24),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle regular14(context) {
    return TextStyle(
      color: const Color(0xffAAAAAA),
      fontSize: getResponsiveFontSize(context, fontBaseSize: 14),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle semiBold18(context) {
    return TextStyle(
      color: const Color(0xffFFFFFF),
      fontSize: getResponsiveFontSize(context, fontBaseSize: 18),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle bold16(context) {
    return TextStyle(
      color: const Color(0xff4EB7F2),
      fontSize: getResponsiveFontSize(context, fontBaseSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle medium20(context) {
    return TextStyle(
      color: const Color(0xffFFFFFF),
      fontSize: getResponsiveFontSize(context, fontBaseSize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }
}

double getResponsiveFontSize(context, {required double fontBaseSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = scaleFactor * fontBaseSize;
  double upperLimit = fontBaseSize * 1.2;
  double lowerLimit = fontBaseSize * 0.8;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  // var dispatcher = PlatformDispatcher.instance;
//  var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1880;
  }
}
