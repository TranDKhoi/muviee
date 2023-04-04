part of home;

class PopularMovie extends StatelessWidget {
  const PopularMovie(this.listMovie, {Key? key}) : super(key: key);
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
                R.popular.translate,
                style: AppStyle.largeTitleTextStyle,
              ),
              const Spacer(),
              MIconButton(
                onTap: () {},
                text: R.seeAll.translate,
                icon: Icons.chevron_right_outlined,
              )
            ],
          ),
        ),
        Container(
          height: 280,
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (ctx, i) => VerticalMovieItem(listMovie[i], () {}),
            separatorBuilder: (ctx, i) => const SizedBox(width: 20),
            itemCount: listMovie.length,
          ),
        )
      ],
    );
  }
}
