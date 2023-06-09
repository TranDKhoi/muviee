import 'package:flutter/material.dart';
import 'package:muviee/common/global_data.dart';
import 'package:muviee/config/dimens.dart';
import 'package:muviee/config/styles.dart';
import 'package:muviee/features/bottom_bar/bottom_bar_page.dart';
import 'package:muviee/utils/extensions/context_extension.dart';
import 'package:muviee/utils/extensions/translate_extension.dart';
import 'package:muviee/utils/navigation_util.dart';

import '../../../../config/langs/r.dart';
import '../../../auth/login/presentation/login.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        "assets/images/boarding.jpg",
        width: context.screenSize.width,
        fit: BoxFit.cover,
      ),
      bottomSheet: Wrap(
        children: [
          Padding(
            padding: const EdgeInsets.all(AppDimens.SCREEN_PADDING),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  R.neverMissMovies.translate,
                  textAlign: TextAlign.start,
                  style: AppStyle.largeTitleTextStyle,
                ),
                const SizedBox(height: AppDimens.SPACING * 2),
                Text(
                  R.beTheFirstOne.translate,
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: AppDimens.SPACING * 2),
                FilledButton(
                  onPressed: () {
                    if (GlobalData.ins.currentUser?.token != null) {
                      NavigationUtil.pushAndRemoveUntil(page: const BottomBarPage());
                    } else {
                      NavigationUtil.pushAndRemoveUntil(page: LoginPage());
                    }
                  },
                  child: Text(
                    R.getStarted.translate,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
