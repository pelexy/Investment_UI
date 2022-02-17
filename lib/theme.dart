import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:investwise/utils/sizeconfig.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.blue,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.white,
      canvasColor: creamColor,
      buttonColor: darkBluishColor,
      accentColor: darkBluishColor,
      primaryColor: whiteColor,
      textTheme: GoogleFonts.robotoTextTheme(
        Theme.of(context).textTheme,
      ),
      tabBarTheme: TabBarTheme(
          unselectedLabelColor: primaryColor,
          labelColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.tab,
          indicator: BoxDecoration(
            gradient: LinearGradient(colors: [primaryColor, primaryColor]),
            borderRadius: BorderRadius.circular(7),
          )),
      appBarTheme: AppBarTheme(
          color: whiteColor,
          elevation: 0.0,
          iconTheme: IconThemeData(color: primaryColor),
          titleTextStyle: TextStyle(color: primaryColor)),
      inputDecorationTheme: const InputDecorationTheme(
        contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xff28A745),
          ),
        ),
        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        selectedIconTheme: IconThemeData(color: primaryColor),
        unselectedIconTheme: IconThemeData(color: primaryColor),
        elevation: 10,
        selectedLabelStyle: TextStyle(
            color: primaryColor, fontFamily: 'Montserrat', fontSize: 14.0),
        unselectedLabelStyle: TextStyle(
            color: lightPrimaryColor, fontFamily: 'Montserrat', fontSize: 12.0),
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.grey[600],
        showUnselectedLabels: true,
      ));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.black,
      canvasColor: lightPrimaryColor,
      buttonColor: primaryColor,
      accentColor: Colors.white,
      appBarTheme: AppBarTheme(
        color: Colors.black,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white),
        textTheme: Theme.of(context).textTheme.copyWith(),
      ));

  static TextStyle headingStyle = TextStyle(
    fontSize: getProportionateScreenWidth(28),
    fontWeight: FontWeight.bold,
    color: Colors.black,
    height: 1.5,
  );
  static final otpInputDecoration = InputDecoration(
    contentPadding:
        EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
    border: outlineInputBorder(),
    focusedBorder: outlineInputBorder(),
    enabledBorder: outlineInputBorder(),
  );
  static OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
      borderSide: const BorderSide(color: Color(0xff28A745)),
    );
  }

  //Colors
  static const kSpacingUnit = 10;
  static Color creamColor = Color(0xfff5f5f5);

  static Color darkBluishColor = Color(0xff403b58);

  static Color primaryColor = Color(0xff28A745);
  static Color whiteColor = Color(0xffffffff);
  static Color lightPrimaryColor = Color(0xff576d8a);
  static Color red = Color(0xffc92e20);
  static Color blue = Color(0xff140b66);
  static Color purple = Color(0xFF2C70D6);
  static Color lemon = Color(0xFF87721c);
}
