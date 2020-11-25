import 'package:flutter/cupertino.dart';

Future<DateTime> showDatePickerTest2(BuildContext context) {
  var date = new DateTime.now();
  return showCupertinoModalPopup(
      context: context,
      builder: (context) {
        return SizedBox(
          height: 200,
          child: CupertinoDatePicker(
            mode: CupertinoDatePickerMode.dateAndTime,
            initialDateTime: date,
            maximumDate: date.add(Duration(days: 30)),
            maximumYear: date.year + 1,
            onDateTimeChanged: (dateTime) {
              print('$dateTime');
            },
          ),
        );
      }
  );
}