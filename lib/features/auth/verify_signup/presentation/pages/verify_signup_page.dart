part of verify_signup;

class VerifySignupPage extends StatelessWidget {
  VerifySignupPage({Key? key}) : super(key: key);
  final codeCtr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => injector<VerifySignupCubit>(),
      child: Scaffold(
        body: Image.asset("assets/images/login_image.jpg"),
        bottomSheet: SizedBox(
          height: context.screenSize.height * 0.5,
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.all(AppDimens.SCREEN_PADDING),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                //verify text
                Text(
                  R.wehavesentaverificationcode.translate,
                  style: AppStyle.largeTitleTextStyle,
                ),
                const SizedBox(height: AppDimens.SPACING * 3),
                //verify code field
                MCodeField(controller: codeCtr),
                const SizedBox(height: AppDimens.SPACING * 2),
                //confirm button
                BlocConsumer<VerifySignupCubit, VerifySignupState>(
                  listener: (context, state) {
                    if (state is VerifySuccessState) {
                      NavigationUtil.pushAndRemoveUntil(page: BioPage());
                    }
                  },
                  builder: (context, state) {
                    return FilledButton(
                      onPressed: () {
                        context.read<VerifySignupCubit>().verifyCode("111");
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(R.didntseeanycode.translate),
                    GestureDetector(
                      child: Text(
                        R.back.translate,
                        style: AppStyle.normalItalicPrimaryTextStyle,
                      ),
                      onTap: () => NavigationUtil.pop(),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
