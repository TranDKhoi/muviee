part of verify_signup;

class VerifySignupPage extends StatelessWidget {
  VerifySignupPage({required this.currentEmail, Key? key}) : super(key: key);
  final codeCtr = TextEditingController();
  final String currentEmail;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => injector<VerifySignupCubit>(),
      child: Scaffold(
        body: Image.asset(
          "assets/images/login_image.jpg",
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
                  //verify text
                  Text(
                    R.wehavesentaverificationcode.translate,
                    style: AppStyle.largeTitleTextStyle,
                  ),
                  const SizedBox(height: AppDimens.SPACING * 2),
                  //verify code field
                  MCodeField(controller: codeCtr),
                  const SizedBox(height: AppDimens.SPACING * 2),
                  //confirm button
                  BlocConsumer<VerifySignupCubit, VerifySignupState>(
                    listener: (context, state) {
                      if (state is VerifySuccessState) {
                        NavigationUtil.pushAndRemoveUntil(page: const SuccessPage());
                      }
                    },
                    builder: (context, state) {
                      return FilledButton(
                        onPressed: () {
                          context.read<VerifySignupCubit>().verifyCode(currentEmail, codeCtr.text);
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
          ],
        ),
      ),
    );
  }
}
