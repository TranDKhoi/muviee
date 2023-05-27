part of home;

class BigBanner extends StatelessWidget {
  const BigBanner(this.movie, {Key? key}) : super(key: key);

  final MovieEntity movie;

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeBloc, HomeState>(
      listener: (context, state) {
        if (state is GetMovieVideoSuccess) {
          NavigationUtil.popToRoot();
          context.read<BottomBarCubit>().navigateToWatchingTab(state.movieVideo);
        }
      },
      child: Stack(
        children: [
          GestureDetector(
            onTap: () {
              NavigationUtil.push(page: MovieDetailPage(movie));
            },
            child: Image.network(
              movie.posterPath,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: 80,
              width: context.screenSize.width,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black,
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 32,
            right: 32,
            child: Row(
              children: [
                SizedBox(
                  width: context.screenSize.width / 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        movie.title,
                        style: AppStyle.largeTitleTextStyle,
                        maxLines: 2,
                      ),
                      SizedBox(
                        height: 20,
                        child: ListView.separated(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, i) => Text(movie.genres[i].name),
                          separatorBuilder: (ctx, i) => const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text("•"),
                          ),
                          itemCount: movie.genres.length,
                        ),
                      )
                    ],
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    context.read<HomeBloc>().add(GetMovieVideoEvent(movie.id));
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: AppColor.primaryColor,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Icon(
                      Icons.play_arrow_sharp,
                      size: 40,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
