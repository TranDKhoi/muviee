part of favorite;

class FavoritePage extends StatelessWidget {
  FavoritePage({Key? key}) : super(key: key);

  final _cubit = injector<ProfileCubit>();

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBarTitle: R.saved.translate,
      isHaveAppBar: true,
      body: Padding(
        padding: const EdgeInsets.all(AppDimens.SCREEN_PADDING),
        child: BlocBuilder<ProfileCubit, ProfileState>(
          builder: (context, state) {
            if (_cubit.favoriteList == null || (_cubit.favoriteList?.results.isEmpty ?? true)) {
              return Center(
                child: Text(R.letsaveyourfirstmovie.translate),
              );
            }
            return ListView.separated(
              itemBuilder: (ctx, i) => HorizontalMovieItem(_cubit.favoriteList!.results[i]),
              separatorBuilder: (_, __) => const SizedBox(height: AppDimens.SPACING),
              itemCount: _cubit.favoriteList?.results.length ?? 0,
            );
          },
        ),
      ),
    );
  }
}
