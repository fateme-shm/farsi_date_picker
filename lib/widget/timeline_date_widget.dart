import 'package:farsi_date_picker/farsi_date_picker.dart';
import 'package:flutter/material.dart';

import '../src/date_model.dart';

class TimeLineDateWidget extends StatelessWidget {
  final TimeLinePickerModel pickerModel;
  final FarsiDatePickerTheme theme;
  final DateChangedCallback onConfirm;
  final int index;

  TimeLineDateWidget({
    required this.pickerModel,
    required this.theme,
    required this.onConfirm,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: pickerModel.width,
        margin: EdgeInsets.all(3.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          color: pickerModel.selectedDate(index)
              ? theme.selectedItemColor
              : theme.noneSelectedItemColor,
        ),
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(pickerModel.getDate(index).split(",")[2]),
              Text(
                pickerModel.getDate(index).split(",")[1],
                style: theme.daysNumberTextStyle,
              ),
            ],
          ),
        ),
      ),
      onTap: () {
        // Check if onDateSelected is not null
        if (onConfirm != null) {
          pickerModel.selectDate(index);
          onConfirm(pickerModel.getSelectedDate());
        }
      },
    );
  }
}
