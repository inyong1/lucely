import 'package:flutter/material.dart';
import 'constant/app_color.dart';

abstract class AppThemes {
  const AppThemes._();

  static get light => ThemeData(
        brightness: Brightness.light,
        fontFamily: "sans",
        primaryColor: AppColor.blue,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              textStyle: MaterialStateProperty.resolveWith(
                  (states) => const TextStyle(fontFamily: "sans", fontWeight: FontWeight.bold)),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
              ),
              minimumSize: const MaterialStatePropertyAll(Size(50, 44))
              // padding: MaterialStateProperty.all(
              //     const EdgeInsets.symmetric(vertical: 16, horizontal: 16))
              ),
        ),
        appBarTheme: const AppBarTheme(
            elevation: 0,
            titleTextStyle: TextStyle(
                fontFamily: "sans",
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14 * 1.33),
            iconTheme: IconThemeData(color: Colors.black54, size: 15),
            titleSpacing: 4),
        radioTheme: RadioThemeData(
          fillColor: MaterialStateProperty.all(AppColor.blue),
        ),
        inputDecorationTheme: InputDecorationTheme(
          // contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),

          isDense: true,

          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          // filled: true,
          // fillColor: Colors.white,
          floatingLabelStyle: const TextStyle(fontSize: 16, fontFamily: "sans"),
          hintStyle: const TextStyle(fontSize: 14, fontFamily: "sans"),
          // enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10)).copyWith(
          //     borderSide: const BorderSide(
          //   color: Color(AppColors.colorGreyInputBorder),
          // )),
        ),
        colorScheme: const ColorScheme.light().copyWith(
          primary: AppColor.blue,
          secondary: AppColor.blue,
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
              // tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              minimumSize: const MaterialStatePropertyAll(Size(50, 44)),
              // padding: MaterialStateProperty.resolveWith(
              //     (states) => const EdgeInsets.symmetric(horizontal: 10)),
              side: MaterialStateProperty.all(
                const BorderSide(color: AppColor.blue, width: 1.5),
              ),
              // textStyle: MaterialStateProperty.all(
              //     const TextStyle(fontSize: 12, fontFamily: "sans", fontWeight: FontWeight.bold)),
              shape: MaterialStateProperty.resolveWith(
                (s) => const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              )),
        ),
        // textButtonTheme: TextButtonThemeData(
        //   style: const ButtonStyle().copyWith(
        //       minimumSize: MaterialStateProperty.all(const Size(80, 30)),
        //       padding: MaterialStateProperty.resolveWith(
        //           (states) => const EdgeInsets.symmetric(horizontal: 10)),
        //       textStyle: const MaterialStatePropertyAll(
        //           TextStyle(fontSize: 12, fontFamily: "sans", fontWeight: FontWeight.bold)),
        //       shape: const MaterialStatePropertyAll(
        //           RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))))),
        // ),
        textTheme: const TextTheme(
                bodyMedium: TextStyle(fontSize: 13, color: AppColor.black),
                // bodyText1: TextStyle(fontSize: 30 * 1.33),
                // bodyText2: TextStyle(fontSize: 13),
                // subtitle1: TextStyle(fontSize: 10)
                headlineMedium:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 28))
            .apply(
                // displayColor: const Color(AppColors.colorText808080),
                // bodyColor: const Color(AppColors.colorText808080),
                ),
        // checkboxTheme: const CheckboxThemeData().copyWith(
        //   fillColor: const MaterialStatePropertyAll(Color(AppColors.colorPrimary)),
        // ),
      );

  static get dark => ThemeData.dark();
}
