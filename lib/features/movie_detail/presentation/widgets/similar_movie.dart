part of movie_detail;

class SimilarMovie extends StatelessWidget {
  const SimilarMovie(this.listMovie, {Key? key}) : super(key: key);
  final List<MovieEntity> listMovie;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppDimens.SCREEN_PADDING,
          ),
          child: Row(
            children: [
              Text(
                R.similar.translate,
                style: AppStyle.largeTitleTextStyle,
              ),
              const Spacer(),
              // MIconButton(
              //   onTap: () {
              //     NavigationUtil.push(page: const ListMoviePage(MovieType.latest));
              //   },
              //   text: R.seeAll.translate,
              //   icon: Icons.chevron_right_outlined,
              // )
            ],
          ),
        ),
        const SizedBox(height: AppDimens.SPACING),
        Container(
          height: 280,
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (ctx, i) => VerticalMovieItem(listMovie[i], () {
              NavigationUtil.push(page: MovieDetailPage(listMovie[i]));
            }),
            separatorBuilder: (ctx, i) => const SizedBox(width: 20),
            itemCount: listMovie.length,
          ),
        ),
        const SizedBox(height: AppDimens.SPACING),
      ],
    );
  }
}
