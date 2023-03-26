part of verify_forgot;

class VerifyForgotPassPage extends StatelessWidget {
  VerifyForgotPassPage({Key? key}) : super(key: key);

  final codeCtr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => injector<VerifyForgotCubit>(),
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
                //verify text
                Text(
                  R.wehavesentaverificationcode.translate,
                  style: AppStyle.largeTitleTextStyle,
                ),
                const SizedBox(height: AppDimens.SPACING),
                //verify code field
                MCodeField(controller: codeCtr),
                const SizedBox(height: AppDimens.SPACING),
                //confirm button
                BlocConsumer<VerifyForgotCubit, VerifyForgotState>(
                  listener: (context, state) {
                    if (state is VerifyForgotSuccess) {
                      NavigationUtil.pushAndRemoveUntil(page: ChangePassPage());
                    }
                  },
                  builder: (context, state) {
                    return FilledButton(
                      onPressed: () {
                        context.read<VerifyForgotCubit>().verifyCode("111");
                      },
                      child: Text(R.confirm.translate),
                    );
                  },
                ),
                const SizedBox(height: 10),
                const Divider(),
                const SizedBox(height: 10),
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
