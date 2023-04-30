part of movie_detail;

class StoryText extends StatelessWidget {
  const StoryText({
    super.key,
    required this.movie,
  });

  final MovieEntity movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppDimens.SCREEN_PADDING).copyWith(top: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                R.story.translate,
                style: AppStyle.largeTitleTextStyle,
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  context.read<MovieDetailBloc>().add(LikeMovieEvent(movie.id));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColor.primaryColor.withOpacity(0.3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    child: Row(
                      children: [
                        Text(R.like.translate),
                        const SizedBox(width: AppDimens.SPACING / 2),
                        const Icon(Icons.favorite),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: AppDimens.SPACING),
          ReadMoreText(
            movie.overview,
            trimLines: 5,
            colorClickableText: Colors.pink,
            trimMode: TrimMode.Line,
            trimCollapsedText: R.more.translate,
            trimExpandedText: R.less.translate,
            moreStyle: AppStyle.primaryColorBoldStyle,
            lessStyle: AppStyle.primaryColorBoldStyle,
          ),
        ],
      ),
    );
  }
}
