part of list_movie;

class ListMoviePage extends StatefulWidget {
  const ListMoviePage(this.movieType, {Key? key}) : super(key: key);

  final MovieType movieType;

  @override
  State<ListMoviePage> createState() => _ListMoviePageState();
}

class _ListMoviePageState extends State<ListMoviePage> {
  final ListMovieBloc _bloc = injector<ListMovieBloc>();

  @override
  void initState() {
    _bloc.add(GetMovieFirstLoadEvent(widget.movieType));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _bloc,
      child: AppScaffold(
        isHaveAppBar: true,
        body: Padding(
          padding: const EdgeInsets.all(AppDimens.SCREEN_PADDING),
          child: BlocBuilder<ListMovieBloc, ListMovieState>(
            builder: (context, state) {
              if (state is ListMovieLoaded) {
                return LoadMoreListView.separated(
                  itemBuilder: (ctx, i) => HorizontalMovieItem(state.movies.results[i]),
                  separatorBuilder: (_, __) => const SizedBox(height: AppDimens.SPACING),
                  itemCount: state.movies.results.length,
                  onLoadMore: () async {
                    await Future.delayed(const Duration(seconds: 2))
                        .then((value) => _bloc.add(LoadMoreMovieEvent(widget.movieType)));
                  },
                  loadMoreWidget: const CupertinoActivityIndicator(),
                );
              }
              return const Center(child: CircularProgressIndicator());
            },
          ),
        ),
      ),
    );
  }
}
