part of profile;

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(R.profile.translate),
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppDimens.SCREEN_PADDING / 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: CircleAvatar(
                  radius: context.screenSize.width / 8,
                  backgroundImage: const NetworkImage(
                      "https://th.bing.com/th/id/OIP.64GgWje_ynFTjhu93we44gHaHO?w=187&h=183&c=7&r=0&o=5&pid=1.7"),
                ),
              ),
              const SizedBox(height: AppDimens.SPACING / 2),
              Text(
                GlobalData.ins.currentUser?.email ?? "@email",
                style: AppStyle.mediumTitleTextStyle,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppDimens.SPACING / 2),
              Text(
                GlobalData.ins.currentUser?.username ?? "@username",
                style: const TextStyle(
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppDimens.SPACING),
              //activities
              Text(
                R.youractivities.translate,
                style: AppStyle.largeTitleTextStyle,
              ),
              const SizedBox(height: AppDimens.SPACING),
              Wrap(
                runSpacing: 15,
                children: [
                  BlocBuilder<ProfileCubit, ProfileState>(
                    builder: (context, state) {
                      return SettingItem(
                        onTap: () {
                          NavigationUtil.push(page: FavoritePage());
                        },
                        icon: Icons.bookmark_added,
                        title: R.saved.translate,
                        trailing:
                            Text("${injector<ProfileCubit>().favoriteList?.results.length ?? 0}"),
                      );
                    },
                  ),
                  SettingItem(
                    onTap: () {},
                    icon: Icons.rate_review_rounded,
                    title: R.review.translate,
                    trailing: Text("253"),
                  ),
                  SettingItem(
                    onTap: () {},
                    icon: Icons.history,
                    title: R.history.translate,
                    trailing: const Icon(Icons.chevron_right_rounded),
                  ),
                ],
              ),
              const SizedBox(height: AppDimens.SPACING * 3),
              //account
              Text(
                R.account.translate,
                style: AppStyle.largeTitleTextStyle,
              ),
              const SizedBox(height: AppDimens.SPACING),
              Wrap(
                runSpacing: 15,
                children: [
                  SettingItem(
                    onTap: () async {
                      await NavigationUtil.push(page: const SettingPage());
                      setState(() {});
                    },
                    icon: Icons.settings,
                    title: R.settings.translate,
                    trailing: const Icon(Icons.chevron_right_rounded),
                  ),
                  SettingItem(
                    onTap: () {},
                    icon: Icons.lock,
                    title: R.changePassword.translate,
                    trailing: const Icon(Icons.chevron_right_rounded),
                  ),
                  SettingItem(
                    onTap: () {
                      context.read<ProfileCubit>().logOut();
                    },
                    icon: Icons.logout_rounded,
                    title: R.sign_out.translate,
                    trailing: const Icon(Icons.chevron_right_rounded),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
