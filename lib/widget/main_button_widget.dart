import 'package:flutter/material.dart';
import '../src/FarsiDatePickerTheme.dart';

class MainButtonWidget extends StatelessWidget {
  final FarsiDatePickerTheme theme;
  final VoidCallback onConfirm;
  final VoidCallback onNow;

  const MainButtonWidget({
    Key? key,
    required this.theme,
    required this.onConfirm,
    required this.onNow,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(theme.buttonColor),
              shadowColor: MaterialStateProperty.all(theme.buttonColor),
              elevation: MaterialStateProperty.all(8),
            ),
            child: Text(
              'انتخاب',
              style: theme.doneStyle,
            ),
            onPressed: onConfirm,
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Expanded(
          child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(theme.buttonColor),
              shadowColor: MaterialStateProperty.all(theme.buttonColor),
              elevation: MaterialStateProperty.all(8),
            ),
            child: Text(
              'اکنون',
              style: theme.nowStyle,
            ),
            onPressed: onNow,
          ),
        ),
      ],
    );
  }
}
