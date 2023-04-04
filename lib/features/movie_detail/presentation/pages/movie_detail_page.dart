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
        body: Column(
          children: [
            BigBanner2(movie: movie),
            StoryText(movie: movie),
            BlocBuilder<MovieDetailBloc, MovieDetailState>(
              builder: (context, state) {
                if (state is MovieDetailLoaded) {
                  return Column(
                    children: [
                      if (state.actors.isNotEmpty) Text("actors"),
                      if (state.gallery.backdrops.isNotEmpty) Text("gallery"),
                      if (state.reviewSearch.results.isNotEmpty) Text("review"),
                    ],
                  );
                }
                return const Center(child: CupertinoActivityIndicator());
              },
            ),
          ],
        ),
      ),
    );
  }
}
