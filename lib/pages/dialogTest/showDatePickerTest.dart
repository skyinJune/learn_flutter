import 'package:flutter/material.dart';

Future<DateTime> showDatePickerTest(BuildContext context) {
  var date = new DateTime.now();
  return showDatePicker(
      context: context,
      initialDate: date,
      firstDate: date,
      lastDate: date.add(Duration(days: 30))
  );
}