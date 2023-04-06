part of movie_detail;

class MovieDetailPage extends StatelessWidget {
  const MovieDetailPage(this.movie, {Key? key}) : super(key: key);

  final MovieEntity movie;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          injector<MovieDetailBloc>()..add(LoadMovieDetailEvent(movie.id)),
      child: AppScaffold(
        isHaveAppBar: true,
        body: SingleChildScrollView(
          child: Column(
            children: [
              BigBanner2(movie: movie),
              StoryText(movie: movie),
              const SizedBox(height: AppDimens.SCREEN_PADDING),
              BlocBuilder<MovieDetailBloc, MovieDetailState>(
                builder: (context, state) {
                  if (state is MovieDetailLoaded) {
                    return Column(
                      children: [
                        if (state.actors.isNotEmpty) CastWidget(state.actors),
                        if (state.gallery.backdrops.isNotEmpty)
                          GalleryWidget(state.gallery.backdrops),
                        if (state.reviewSearch.results.isNotEmpty)
                          ReviewWidget(state.reviewSearch.results),
                      ],
                    );
                  }
                  return const Center(child: CupertinoActivityIndicator());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
