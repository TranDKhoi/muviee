part of review;

class ReviewPage extends StatelessWidget {
  ReviewPage({Key? key}) : super(key: key);

  final ReviewBloc _bloc = injector<ReviewBloc>()..add(GetReviewEvent());

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _bloc,
      child: AppScaffold(
        isHaveAppBar: true,
        body: Padding(
          padding: const EdgeInsets.all(AppDimens.SCREEN_PADDING),
          child: BlocBuilder<ReviewBloc, ReviewState>(
            builder: (context, state) {
              if (state is ReviewLoaded) {
                if (state.reviews.results.isEmpty) {
                  return const Center(child: Text(R.youhaventreviewedanymovieyet));
                }
                return ListView.separated(
                  itemBuilder: (ctx, i) => ReviewItem(state.reviews.results[i]),
                  separatorBuilder: (_, __) => const SizedBox(height: AppDimens.SPACING),
                  itemCount: state.reviews.results.length,
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
