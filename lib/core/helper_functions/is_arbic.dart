
// ignore_for_file: depend_on_referenced_packages

import 'package:intl/intl.dart';
bool isArabic(){

  // Call the `Intl.getCurrentLocale()` method to get the current locale.
  // Compare it with "ar" to check if it is Arabic.
  return Intl.getCurrentLocale() == "ar";
}