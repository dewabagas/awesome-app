import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

dismisKeyboard() {
  FocusManager.instance.primaryFocus?.unfocus();
}

String parseErrorMessage(String? s) {
  if (s == null) {
    return "wentWrong".tr;
  } else if (s.toLowerCase().contains("connection")) {
    return "connectionFailed".tr;
  } else {
    return "connectionFailed".tr;
  }
}

TimeOfDay stringToTimeOfDay(String timeOfDay) {
  final format = DateFormat.jm();
  List<String> _times = timeOfDay.split(":");

  String _hour = _times[0].substring(_times[0].length - 2);
  String _minute = _times[1].substring(0, 2);

  TimeOfDay _timeOfDay = TimeOfDay(
    hour: int.parse(_hour),
    minute: int.parse(_minute),
  );
  return _timeOfDay;
}

  int createUniqueId(int maxValue) {
    Random random = new Random();
    return random.nextInt(maxValue);
  }
