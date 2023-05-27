import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:muviee/common/widgets/m_text_field.dart';
import 'package:muviee/config/dimens.dart';
import 'package:muviee/features/profile/presentation/profile.dart';
import 'package:muviee/utils/extensions/translate_extension.dart';

import '../../../../config/langs/r.dart';
import '../../../../config/styles.dart';

extension ChangePassDialog on ProfilePage {
  void showChangePassDialog(BuildContext context) {
    final TextEditingController oldPass = TextEditingController();
    final TextEditingController newPass = TextEditingController();
    final TextEditingController rePass = TextEditingController();
    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          contentPadding: const EdgeInsets.all(16),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                R.changePassword.translate,
                style: AppStyle.largeTitleTextStyle,
              ),
              const SizedBox(height: AppDimens.SPACING * 2),
              MTextField(
                hintText: R.currentPass.translate,
                controller: oldPass,
                maxLines: 1,
                obscureText: true,
              ),
              const SizedBox(height: AppDimens.SPACING * 1),
              MTextField(
                hintText: R.newPass.translate,
                controller: newPass,
                maxLines: 1,
                obscureText: true,
              ),
              const SizedBox(height: AppDimens.SPACING * 1),
              MTextField(
                hintText: R.confirmPassword.translate,
                controller: rePass,
                maxLines: 1,
                obscureText: true,
              ),
              const SizedBox(height: AppDimens.SPACING * 1),
              FilledButton(
                onPressed: () {
                  context.read<ProfileCubit>().changePassword(
                        oldPass.text.trim(),
                        newPass.text.trim(),
                        rePass.text.trim(),
                      );
                },
                child: Text(R.confirm.translate),
              ),
            ],
          ),
        );
      },
    );
  }
}
