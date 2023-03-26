part of bio;

class BioPage extends StatelessWidget {
  BioPage({Key? key}) : super(key: key);

  final userCtr = TextEditingController();
  final countryCtr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => injector<BioCubit>(),
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
                //few more steps text
                Text(
                  R.onlyafewstepleft.translate,
                  style: AppStyle.largeTitleTextStyle,
                ),
                const SizedBox(height: AppDimens.SPACING * 3),
                //name
                MTextField(
                  controller: userCtr,
                  hintText: R.nickname.translate,
                  preIcon: Icons.drive_file_rename_outline_rounded,
                ),
                const SizedBox(height: AppDimens.SPACING * 2),
                SimpleAutoCompleteTextField(
                  key: autoCompleteKey,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.public),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    hintText: R.country.translate,
                  ),
                  controller: countryCtr,
                  suggestions: [],
                ),
                const SizedBox(height: AppDimens.SPACING * 2),
                //confirm button
                BlocConsumer<BioCubit, BioState>(
                  listener: (context, state) {
                    if (state is SaveBioSuccess) {
                      NavigationUtil.pushAndRemoveUntil(page: BottomBarPage());
                    }
                  },
                  builder: (context, state) {
                    return FilledButton(
                      onPressed: () {
                        context.read<BioCubit>().saveUserBio(
                            nickname: userCtr.text.trim(),
                            country: countryCtr.text.trim());
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
