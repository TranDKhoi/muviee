part of change_pass;

class ChangePassPage extends StatelessWidget {
  ChangePassPage({Key? key}) : super(key: key);

  final rePassController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => injector<ChangePassCubit>(),
      child: Scaffold(
        body: Image.asset("assets/images/forgot_image.jpg"),
        bottomSheet: SizedBox(
          height: context.screenSize.height * 0.4,
          width: double.maxFinite,
          child: Padding(
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
                      NavigationUtil.pushAndRemoveUntil(page: LoginPage());
                    }
                  },
                  builder: (context, state) {
                    return FilledButton(
                      onPressed: () {
                        context.read<ChangePassCubit>().confirmChangePass(
                            pass: passwordController.text.trim(),
                            rePass: rePassController.text.trim());
                      },
                      child: Text(R.confirm.translate),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
