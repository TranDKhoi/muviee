import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:muviee/config/dimens.dart';
import 'package:muviee/config/styles.dart';
import 'package:muviee/utils/extensions/translate_extension.dart';
import 'package:muviee/utils/global_keys.dart';
import 'package:muviee/utils/navigation_util.dart';

import '../../../../common/widgets/auto_complete_textfield.dart';
import '../../../../config/langs/r.dart';

class FilterPage extends StatelessWidget {
  FilterPage({Key? key}) : super(key: key);

  ValueNotifier<DateTime> selectedYear = ValueNotifier(DateTime.now());
  TextEditingController countryCtr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(R.filter.translate),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppDimens.SCREEN_PADDING),
        child: Column(
          children: [
            //filter
            Row(
              children: [
                Text(
                  R.year.translate,
                  style: AppStyle.largeTitleTextStyle,
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    showYearPicker();
                  },
                  child: ValueListenableBuilder(
                    valueListenable: selectedYear,
                    builder: (_, DateTime value, __) => Text(
                      value.year.toString(),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppDimens.SPACING * 3),
            //region
            Row(
              children: [
                Text(
                  toBeginningOfSentenceCase(R.country.translate) ?? "",
                  style: AppStyle.largeTitleTextStyle,
                ),
                const Spacer(),
                Expanded(
                  child: SimpleAutoCompleteTextField(
                    key: autoCompleteKey,
                    textAlign: TextAlign.end,
                    decoration: InputDecoration.collapsed(
                      hintText: R.selectCountry.translate,
                    ),
                    controller: countryCtr,
                    suggestions: ["Viet nam", "Spanol"],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void showYearPicker() {
    showDialog(
      context: navigatorKey.currentContext!,
      builder: (ctx) => AlertDialog(
        content: SizedBox(
          width: 300,
          height: 300,
          child: YearPicker(
            firstDate: DateTime(DateTime.now().year - 20),
            lastDate: DateTime(2030),
            selectedDate: selectedYear.value,
            onChanged: (DateTime value) {
              selectedYear.value = value;
              NavigationUtil.pop();
            },
          ),
        ),
      ),
    );
  }
}
