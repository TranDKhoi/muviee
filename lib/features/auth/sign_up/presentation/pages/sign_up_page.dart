part of signup;

class SignupPage extends StatelessWidget {
  SignupPage({Key? key}) : super(key: key);

  final emailCtr = TextEditingController();
  final passCtr = TextEditingController();
  final rePassCtr = TextEditingController();
  final userCtr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => injector<SignupBloc>(),
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
                  //login text
                  Text(
                    R.sign_up.translate,
                    style: AppStyle.largeTitleTextStyle,
                  ),
                  const SizedBox(height: AppDimens.SPACING * 2),
                  //email
                  MTextField(
                    controller: emailCtr,
                    hintText: R.email.translate,
                    preIcon: Icons.person,
                  ),
                  const SizedBox(height: AppDimens.SPACING * 2),
                  //password
                  MTextField(
                    controller: passCtr,
                    obscureText: true,
                    hintText: R.password.translate,
                    preIcon: Icons.lock,
                  ),
                  const SizedBox(height: AppDimens.SPACING * 2),
                  //confirm password
                  MTextField(
                    controller: rePassCtr,
                    obscureText: true,
                    hintText: R.confirmPassword.translate,
                    preIcon: Icons.lock,
                  ),
                  const SizedBox(height: AppDimens.SPACING * 2),
                  //user name
                  MTextField(
                    controller: userCtr,
                    hintText: R.nickname.translate,
                    preIcon: Icons.drive_file_rename_outline_rounded,
                  ),
                  const SizedBox(height: AppDimens.SPACING * 2),
                  //login button
                  BlocConsumer<SignupBloc, SignupState>(
                    listener: (context, state) {
                      if (state is ConfirmSuccessState) {
                        NavigationUtil.push(page: VerifySignupPage(currentEmail: emailCtr.text));
                      }
                    },
                    builder: (context, state) {
                      return FilledButton(
                        onPressed: () {
                          context.read<SignupBloc>().add(ConfirmButtonClicked(
                                email: emailCtr.text,
                                password: passCtr.text,
                                rePass: rePassCtr.text,
                                userName: userCtr.text,
                              ));
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
                      Text(R.alreadyhaveanaccount.translate),
                      //sign up button
                      GestureDetector(
                        child: Text(
                          R.login.translate,
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
