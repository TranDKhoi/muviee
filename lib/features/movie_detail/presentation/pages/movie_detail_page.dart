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
                if (state is MovieDetailInitial) {
                  return const Center(child: CupertinoActivityIndicator());
                }
                return Column(
                  children: [],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
