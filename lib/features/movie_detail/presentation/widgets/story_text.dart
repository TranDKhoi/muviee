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
      padding: const EdgeInsets.symmetric(horizontal: AppDimens.SCREEN_PADDING)
          .copyWith(top: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            R.story.translate,
            style: AppStyle.largeTitleTextStyle,
          ),
          const SizedBox(height: 16),
          ReadMoreText(
            movie.overview,
            trimLines: 5,
            colorClickableText: Colors.pink,
            trimMode: TrimMode.Line,
            trimCollapsedText: R.more.translate,
            trimExpandedText: R.less.translate,
            moreStyle: AppStyle.pinkBoldStyle,
            lessStyle: AppStyle.pinkBoldStyle,
          ),
        ],
      ),
    );
  }
}
