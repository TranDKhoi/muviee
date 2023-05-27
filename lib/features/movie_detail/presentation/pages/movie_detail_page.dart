part of movie_detail;

class MovieDetailPage extends StatelessWidget {
  MovieDetailPage(this.movie, {Key? key}) : super(key: key);

  final MovieEntity movie;
  final TextEditingController commentCtr = TextEditingController();
  double rating = 0.0;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => injector<MovieDetailBloc>()..add(LoadMovieDetailEvent(movie.id)),
      child: AppScaffold(
        isHaveAppBar: true,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
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
                        Padding(
                          padding: const EdgeInsets.all(AppDimens.SCREEN_PADDING),
                          child: MReviewField(
                            onRatingChanged: (val) => rating = val * 2,
                            cmtCtr: commentCtr,
                            onSubmit: () {
                              context.read<MovieDetailBloc>().add(
                                    SubmitReviewEvent(
                                      id: movie.id,
                                      content: commentCtr.text,
                                      rating: rating,
                                    ),
                                  );
                            },
                          ),
                        ),
                        if (state.similarMovie.isNotEmpty) SimilarMovie(state.similarMovie),
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
