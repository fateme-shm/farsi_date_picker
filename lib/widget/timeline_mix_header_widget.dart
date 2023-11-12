import 'package:farsi_date_picker/farsi_date_picker.dart';
import 'package:flutter/material.dart';

import '../src/date_model.dart';

class TimelineMixHeaderWidget extends StatelessWidget {
  final TimeLinePickerModel pickerModel;
  final FarsiDatePickerTheme theme;

  const TimelineMixHeaderWidget({
    Key? key,
    required this.pickerModel,
    required this.theme,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: pickerModel.changeMonthPrev,
              icon: Card(
                color: Colors.grey[200],
                child: Icon(
                  Icons.chevron_left,
                  size: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                  width: 90,
                  child: Center(
                    child: Text(
                      "${pickerModel.getMonthName()} ${pickerModel.getYear()}",
                      style: theme.headerStyle,
                    ),
                  )),
            ),
            IconButton(
              onPressed: pickerModel.changeMonthNext,
              icon: Card(
                color: Colors.grey[200],
                child: Icon(
                  Icons.chevron_right,
                  size: 20,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
