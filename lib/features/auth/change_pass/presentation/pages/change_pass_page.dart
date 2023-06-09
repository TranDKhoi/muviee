part of change_pass;

class ChangePassPage extends StatelessWidget {
  ChangePassPage({required this.tempToken, Key? key}) : super(key: key);

  final rePassController = TextEditingController();
  final passwordController = TextEditingController();
  final String tempToken;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => injector<ChangePassCubit>(),
      child: Scaffold(
        body: Image.asset(
          "assets/images/forgot_image.jpg",
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
                  //login text
                  Text(
                    R.setnewpassword.translate,
                    style: AppStyle.largeTitleTextStyle,
                  ),
                  const SizedBox(height: AppDimens.SPACING * 2),
                  //user name
                  MTextField(
                    controller: passwordController,
                    hintText: R.password.translate,
                    preIcon: Icons.lock,
                    obscureText: true,
                  ),
                  const SizedBox(height: AppDimens.SPACING * 2),
                  //password
                  MTextField(
                    controller: rePassController,
                    obscureText: true,
                    hintText: R.confirmPassword.translate,
                    preIcon: Icons.lock,
                  ),
                  const SizedBox(height: AppDimens.SPACING * 2),
                  //login button
                  BlocConsumer<ChangePassCubit, ChangePassState>(
                    listener: (context, state) {
                      if (state is ChangePassSuccessState) {
                        NavigationUtil.pushAndRemoveUntil(page: const SuccessPage());
                      }
                    },
                    builder: (context, state) {
                      return FilledButton(
                        onPressed: () {
                          context.read<ChangePassCubit>().confirmChangePass(
                                pass: passwordController.text.trim(),
                                rePass: rePassController.text.trim(),
                                tempToken: tempToken,
                              );
                        },
                        child: Text(R.confirm.translate),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
