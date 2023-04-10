part of setting;

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      isHaveAppBar: true,
      appBarTitle: R.settings.translate,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppDimens.SCREEN_PADDING / 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: AppBar().preferredSize.height + AppDimens.SCREEN_PADDING),

              //general
              Text(
                R.general.translate,
                style: AppStyle.largeTitleTextStyle,
              ),
              const SizedBox(height: 10),
              Wrap(
                runSpacing: 15,
                children: [
                  SettingItem(
                    onTap: () {
                      showLanguageDialog(context);
                    },
                    icon: Icons.translate,
                    title: R.language.translate,
                    trailing: BlocBuilder<AppCubit, AppState>(
                      builder: (context, state) {
                        return Text(GlobalData.ins.currentLang.name);
                      },
                    ),
                  ),
                  //dark mode
                  SettingItem(
                    onTap: () {},
                    icon: Icons.dark_mode,
                    title: R.darkMode.translate,
                    trailing: BlocBuilder<AppCubit, AppState>(
                      builder: (context, state) {
                        return Switch(
                          value: (state as AppInitial).isDark,
                          onChanged: (bool val) {
                            context.read<AppCubit>().changeTheme(val);
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  showLanguageDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (builder) {
        return AlertDialog(
          title: Text(R.language.translate),
          content: SizedBox(
            width: double.maxFinite,
            child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, i) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    child: Text(LanguageUtil.ins.languages[i].name),
                    onTap: () {
                      context.read<AppCubit>().changeLanguage(LanguageUtil.ins.languages[i].id);
                      Navigator.pop(context);
                    },
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const Divider(
                  color: Colors.grey,
                );
              },
              itemCount: LanguageUtil.ins.languages.length,
            ),
          ),
        );
      },
    );
  }
}
