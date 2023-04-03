part of login;

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => injector<LoginBloc>(),
      child: Scaffold(
        body: Image.asset("assets/images/login_image.jpg"),
        bottomSheet: SizedBox(
          height: context.screenSize.height * 0.6,
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.all(AppDimens.SCREEN_PADDING),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                //login text
                Text(
                  R.login.translate,
                  style: AppStyle.largeTitleTextStyle,
                ),
                const SizedBox(height: AppDimens.SPACING * 5),
                //user name
                MTextField(
                  controller: emailController,
                  hintText: R.email.translate,
                  preIcon: Icons.person,
                ),
                const SizedBox(height: AppDimens.SPACING * 2),
                //password
                MTextField(
                  controller: passwordController,
                  obscureText: true,
                  hintText: R.password.translate,
                  preIcon: Icons.lock,
                ),
                const SizedBox(height: AppDimens.SPACING * 5),
                //login button
                BlocConsumer<LoginBloc, LoginState>(
                  listener: (context, state) {
                    if (state is LoginSuccessState) {
                      NavigationUtil.pushAndRemoveUntil(page: BottomBarPage());
                    }
                  },
                  builder: (context, state) {
                    return FilledButton(
                      onPressed: () {
                        context.read<LoginBloc>().add(LoginButtonClicked(
                            email: emailController.text.trim(),
                            password: passwordController.text.trim()));
                      },
                      child: Text(R.login.translate),
                    );
                  },
                ),
                const Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: AppDimens.SPACING * 2),
                  child: Divider(),
                ),
                //other options
                IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //forgot pass button
                      GestureDetector(
                          child: Text(R.forgotPassword.translate),
                          onTap: () =>
                              NavigationUtil.push(page: ForgotPassPage())),
                      const VerticalDivider(),
                      //sign up button
                      GestureDetector(
                        child: Text(R.sign_up.translate),
                        onTap: () => NavigationUtil.push(page: SignupPage()),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
