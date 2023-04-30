import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:muviee/common/global_data.dart';
import 'package:muviee/config/dimens.dart';
import 'package:muviee/config/styles.dart';
import 'package:muviee/utils/extensions/context_extension.dart';
import 'package:muviee/utils/extensions/translate_extension.dart';

import '../../config/langs/r.dart';
import '../../utils/navigation_util.dart';
import '../bottom_bar/bottom_bar_page.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LottieBuilder.asset(
                "assets/lotties/success.json",
                repeat: false,
              ),
              Text(
                "${R.greatJob.translate}, ${GlobalData.ins.currentUser?.username ?? "user"}",
                style: AppStyle.largeTitleTextStyle,
              ),
              const SizedBox(height: AppDimens.SPACING),
              Text.rich(
                textAlign: TextAlign.center,
                TextSpan(
                  children: [
                    TextSpan(
                      text: R.letswatchyourfirstmovie.translate,
                      style: AppStyle.largeTitleTextStyle,
                    ),
                    const TextSpan(
                      text: 'Muviee',
                      style: AppStyle.primaryColorLargeTitleStyle,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppDimens.SPACING * 4),
              FilledButton(
                onPressed: () {
                  NavigationUtil.pushAndRemoveUntil(page: const BottomBarPage());
                },
                child: Text(R.getStarted.translate),
              ),
            ],
          ),
          IgnorePointer(
            ignoring: true,
            child: LottieBuilder.asset(
              "assets/lotties/firework.json",
              width: context.screenSize.width,
              height: context.screenSize.height,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
