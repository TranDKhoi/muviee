part of movie_detail;

class ReviewWidget extends StatelessWidget {
  const ReviewWidget(
    this.reviews, {
    super.key,
  });

  final List<ReviewEntity> reviews;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: AppDimens.SCREEN_PADDING),
          child: Text(
            R.review.translate,
            style: AppStyle.largeTitleTextStyle,
          ),
        ),
        const SizedBox(height: 16),
        LimitedBox(
          maxHeight: 180,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, i) => ReviewItem(reviews[i]),
              itemCount: reviews.length,
              separatorBuilder: (_, __) => const SizedBox(width: 16),
            ),
          ),
        ),
        const SizedBox(height: 32),
      ],
    );
  }
}
