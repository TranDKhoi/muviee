part of actor;

class ActorInMovie extends StatelessWidget {
  const ActorInMovie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDimens.SCREEN_PADDING),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            R.movie.translate,
            style: AppStyle.largeTitleTextStyle,
          ),
          const SizedBox(height: AppDimens.SPACING),
          BlocBuilder<ActorCubit, ActorState>(
            builder: (context, state) {
              if (state is ActorMovieLoadedState) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: state.movies.map((e) => HorizontalMovieItem(e)).toList(),
                );
              }
              return const CupertinoActivityIndicator();
            },
          ),
        ],
      ),
    );
  }
}
