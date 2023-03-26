part of forgot_pass;

class ForgotPassPage extends StatelessWidget {
  ForgotPassPage({Key? key}) : super(key: key);

  final emailCtr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => injector<ForgotPassCubit>(),
      child: Scaffold(
        body: Image.asset("assets/images/forgot_image.jpg"),
        bottomSheet: SizedBox(
          height: context.screenSize.height * 0.36,
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.all(AppDimens.SCREEN_PADDING),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                //login text
                Text(
                  R.recoveraccount.translate,
                  style: AppStyle.largeTitleTextStyle,
                ),
                const SizedBox(height: AppDimens.SPACING * 2),
                //email
                MTextField(
                  controller: emailCtr,
                  hintText: R.email.translate,
                  preIcon: Icons.person,
                ),
                const SizedBox(height: AppDimens.SPACING),
                //confirm button
                BlocConsumer<ForgotPassCubit, ForgotPassState>(
                  listener: (context, state) {
                    if (state is ConfirmSuccessState) {
                      NavigationUtil.push(page: VerifyForgotPassPage());
                    }
                  },
                  builder: (context, state) {
                    return FilledButton(
                      onPressed: () {
                        context
                            .read<ForgotPassCubit>()
                            .confirmForgotClicked(emailCtr.text.trim());
                      },
                      child: Text(R.confirm.translate),
                    );
                  },
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: AppDimens.SPACING),
                  child: Divider(),
                ),
                //other options
                GestureDetector(
                  child: Text(
                    R.logininstead.translate,
                    style: AppStyle.normalItalicPrimaryTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  onTap: () => NavigationUtil.pop(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
