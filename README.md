

# A persian (farsi, shamsi) date picker for flutter, inspired by [alt_persian_date_picker](https://github.com/tazik561/alt_persian_date_picker)



A Flutter persian date picker inspired by material datetime picker and based on [shamsi_date](https://pub.dartlang.org/packages/shamsi_date).



You can pick date / range date /  Month / Year .




[//]: # (# Screenshots)

[//]: # (Date Picker | Editable Date Picker | Ranged Date Picker | Seprate Header Date Picker | Month Picker | Year Picker | Timeline Picker |)

[//]: # (--- | --- | --- | --- | --- | --- | --- )

[//]: # (|![]&#40;https://raw.githubusercontent.com/tazik561/alt_persian_date_picker/main/images/datePicker.png&#41; |![]&#40;https://raw.githubusercontent.com/tazik561/alt_persian_date_picker/main/images/date_picker_editable.png&#41; |![]&#40;https://raw.githubusercontent.com/tazik561/alt_persian_date_picker/main/images/date_pickerranged.png&#41; |![]&#40;https://raw.githubusercontent.com/tazik561/alt_persian_date_picker/main/images/date_picker_seprate.png&#41; |![]&#40;https://raw.githubusercontent.com/tazik561/alt_persian_date_picker/main/images/month_picker.png&#41; |![]&#40;https://raw.githubusercontent.com/tazik561/alt_persian_date_picker/main/images/year_picker.png&#41; |![]&#40;https://raw.githubusercontent.com/tazik561/alt_persian_date_picker/main/images/date_picker_timeline.png&#41; |)

[//]: # ()
[//]: # ()


## Usage



Add it to your pubspec.yaml file:



```yaml

dependencies:

farsi_date_picker: version

```



In your library add the following import:



```dart

import 'package:farsi_date_picker/farsi_date_picker.dart';

```



Here is an example how to use:



```dart

            TextButton(
              onPressed: () {
                DatePicker.showDatePicker(
                  context,
                  PickerEnum.month,
                  theme: DatePickerTheme(
                      noneSelectedItemColor: Colors.white,
                      selectedItemColor: Colors.greenAccent,
                      disableItemColor: Colors.redAccent),
                  pickerModel: MonthPickerModel(
                    startSelectedInitDate: 4,
                    disables: [1, 5],
                  ),
                  onConfirm: (time) {
                    print("Selected month is $time");
                    _showToast(time);
                  },
                );
              },
              child: Text("ماه"),
            ),
```

## Date time picker parameters and events

| Parameter  | Type | Default | Description |
|-------------------------|---------------------|-----------------------------------------|------------------------------------------------------------------------------                                                                            |
| type| `PickerEnum` | Has 4 values( `month` , `year` , `date` , `rangedate` )|
| headerType| `HeaderType` | Has 3 values( `seprated ` , `mix` , `writable` )|
| disable| `String` or `List<String>` |null| Disable dates |
| theme| `DatePickerTheme` | | You can add your style to each part of date picker |
| onConfirm| `Function(String)` | | This event return a String date |

##Pull request and feedback are always appreciated.

###Contact me with `fatemeshm12@gmail.com` .
