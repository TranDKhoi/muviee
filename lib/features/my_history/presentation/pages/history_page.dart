part of history;

class HistoryPage extends StatelessWidget {
  HistoryPage({Key? key}) : super(key: key);

  final HistoryCubit _cubit = injector<HistoryCubit>()..loadMyHistory();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _cubit,
      child: AppScaffold(
        isHaveAppBar: true,
        appBarTitle: R.history.translate,
        body: Padding(
          padding: const EdgeInsets.all(AppDimens.SCREEN_PADDING),
          child: BlocBuilder<HistoryCubit, HistoryState>(
            builder: (context, state) {
              if (state is HistoryLoaded) {
                if (state.movies.isEmpty) {
                  return Center(child: Text(R.youhaventwatchedanymovieyet.translate));
                }
                return ListView.separated(
                  itemBuilder: (ctx, i) => HorizontalMovieItem(state.movies[i]),
                  separatorBuilder: (_, __) => const SizedBox(height: AppDimens.SPACING),
                  itemCount: state.movies.length,
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
