part of history;

class HistoryItem extends StatelessWidget {
  const HistoryItem(this.movie, {Key? key}) : super(key: key);

  final MovieEntity movie;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        NavigationUtil.push(page: MovieDetailPage(movie));
      },
      onLongPress: () async {
        var res = await showDialog(context: context, builder: (ctx) => const DeleteMovieDialog());
        if (res != null && res) {
          if (context.mounted) {
            context.read<HistoryCubit>().deleteMovie(movie.id);
          }
        }
      },
      child: SizedBox(
        height: 200,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: AppDimens.SPACING),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //movie poster
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  movie.posterPath,
                  errorBuilder: (_, __, ___) => Image.asset(
                    "assets/images/default_avt.png",
                    width: context.screenSize.width * 0.3,
                  ),
                ),
              ),
              const SizedBox(width: AppDimens.SPACING),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //duration
                    Text(
                      Duration(minutes: movie.runtime).format(DurationStyle.FORMAT_HH_MM),
                      style: TextStyle(color: Theme.of(context).hintColor),
                    ),
                    const SizedBox(height: AppDimens.SPACING * 2),
                    //title
                    Text(
                      movie.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppStyle.mediumTitleTextStyle,
                    ),
                    const SizedBox(height: AppDimens.SPACING * 2),
                    //list of genres
                    SizedBox(
                      height: 20,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (ctx, i) => Text(
                          movie.genres[i].name,
                          style: TextStyle(color: Theme.of(context).hintColor),
                        ),
                        separatorBuilder: (ctx, i) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "•",
                            style: TextStyle(color: Theme.of(context).hintColor),
                          ),
                        ),
                        itemCount: movie.genres.length,
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        //play button
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: AppColor.primaryColor,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Icon(
                            Icons.play_arrow_sharp,
                            size: 20,
                          ),
                        ),
                        //rate
                        const Spacer(),
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Text(movie.voteAverage.toStringAsPrecision(2)),
                        Text(
                          "(${movie.voteCount})",
                          style: TextStyle(color: Theme.of(context).hintColor),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
