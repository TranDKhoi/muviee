part of movie_detail;

class CastWidget extends StatelessWidget {
  const CastWidget(
    this.actors, {
    super.key,
  });

  final List<ActorEntity> actors;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: AppDimens.SCREEN_PADDING),
          child: Text(
            R.cast.translate,
            style: AppStyle.largeTitleTextStyle,
          ),
        ),
        const SizedBox(height: 16),
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxHeight: 180,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, i) => CastItem(actors[i]),
              itemCount: actors.length,
              separatorBuilder: (_, __) => const SizedBox(width: 16),
            ),
          ),
        ),
      ],
    );
  }
}
