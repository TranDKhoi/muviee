part of movie_detail;

class BigBanner2 extends StatelessWidget {
  const BigBanner2({
    super.key,
    required this.movie,
  });

  final MovieEntity movie;

  @override
  Widget build(BuildContext context) {
    return BlocListener<MovieDetailBloc, MovieDetailState>(
      listener: (context, state) {
        if (state is GetMovieVideoSuccess) {
          NavigationUtil.pop();
          context.read<BottomBarCubit>().navigateToWatchingTab(state.movieVideo);
        }
      },
      child: SizedBox(
        height: context.screenSize.height / 2.1,
        child: Stack(
          children: [
            // blur background
            ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Image.network(
                movie.backdropPath,
                width: double.infinity,
                height: context.screenSize.height / 2,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => Image.network(
                  movie.posterPath,
                  width: double.infinity,
                  height: context.screenSize.height / 2,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            //foreground
            Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.network(
                      movie.backdropPath,
                      height: context.screenSize.height / 3.7,
                      width: context.screenSize.width - AppDimens.SCREEN_PADDING * 2,
                      fit: BoxFit.cover,
                      errorBuilder: (_, __, ___) => Image.network(
                        movie.posterPath,
                        height: context.screenSize.height / 3.7,
                        width: context.screenSize.width - AppDimens.SCREEN_PADDING * 2,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  //play button
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        context.read<MovieDetailBloc>().add(GetMovieVideoEvent(movie.id));
                      },
                      child: ClipOval(
                        child: Container(
                          width: 50,
                          height: 50,
                          color: Colors.grey.withOpacity(0.5),
                          child: const Icon(
                            Icons.play_arrow_sharp,
                            size: 40,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //gradient
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
            //title
            Positioned(
              bottom: 10,
              left: 32,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Text(
                      movie.title,
                      style: AppStyle.largeTitleTextStyle,
                    ),
                  ),
                  //genre and rating
                  SizedBox(
                    width: context.screenSize.width - AppDimens.SCREEN_PADDING * 2,
                    child: Row(
                      children: [
                        SizedBox(
                          height: 20,
                          width: 220,
                          child: ListView.separated(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, i) => Text(
                              movie.genres[i].name,
                              overflow: TextOverflow.fade,
                              maxLines: 1,
                            ),
                            separatorBuilder: (ctx, i) => const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text("•"),
                            ),
                            itemCount: movie.genres.length,
                          ),
                        ),
                        const Spacer(),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Text(
                              "${movie.voteAverage.toStringAsFixed(1)}(${movie.voteCount})",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //rating
          ],
        ),
      ),
    );
  }
}
