import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension DoubleExtension on double {
  String toRupiahString() {
    final format = NumberFormat("#,##0.000", "in_ID");

    String result = format.format(this);
    if (result.contains(format.symbols.DECIMAL_SEP)) {
      final splited = result.split(format.symbols.DECIMAL_SEP);
      result = splited.first;
      final decimalPartOri = splited[1];
      String decimalPart = "";
      for(int i= decimalPartOri.length-1;i>=0;i--){
        if(decimalPartOri[i] != "0"){
          decimalPart = decimalPartOri.substring(0,i+1);
          break;
        }
      }
      if(decimalPart.isNotEmpty){
        result = splited.first+format.symbols.DECIMAL_SEP+decimalPart;
      }
    }
    // if (result.endsWith(".000") || result.endsWith(',000')) {
    //   result = result.substring(0, result.length - 4);
    // } else if (result.endsWith("00") || result.endsWith('00')) {
    //   result = result.substring(0, result.length - 2);
    // } else if (result.endsWith("0") || result.endsWith('0')) {
    //   result = result.substring(0, result.length - 1);
    // }
    return result;
  }

  String toStringTrimZeroDecimal() {
    String result = "$this";
    if (result.endsWith(".0")) {
      result = result.substring(0, result.length - 2);
    }
    if (result.endsWith(".00")) {
      result = result.substring(0, result.length - 3);
    }
    if (result.endsWith(".000")) {
      result = result.substring(0, result.length - 4);
    }
    return result;
  }
}
