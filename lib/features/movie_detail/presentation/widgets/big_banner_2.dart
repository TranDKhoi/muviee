part of movie_detail;

class BigBanner2 extends StatelessWidget {
  const BigBanner2({
    super.key,
    required this.movie,
  });

  final MovieEntity movie;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenSize.height / 2.1,
      child: Stack(
        children: [
          // blur background
          ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Image.network(
              movie.backdropPath,
              width: double.infinity,
              height: context.screenSize.height / 2,
              fit: BoxFit.cover,
            ),
          ),
          //foreground
          Positioned(
            bottom: (context.screenSize.height / 2.1) / 5,
            left: 32,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                movie.backdropPath,
                height: context.screenSize.height / 3.7,
                fit: BoxFit.cover,
              ),
            ),
          ),
          //gradient
          Positioned(
            bottom: 0,
            child: Container(
              height: 80,
              width: context.screenSize.width,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black,
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),
          //title
          Positioned(
            bottom: 10,
            left: 32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  movie.title,
                  style: AppStyle.largeTitleTextStyle,
                ),
                SizedBox(
                  height: 20,
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, i) => Text(
                      movie.genres[i].name,
                      overflow: TextOverflow.fade,
                      maxLines: 1,
                    ),
                    separatorBuilder: (ctx, i) => const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text("•"),
                    ),
                    itemCount: movie.genres.length,
                  ),
                )
              ],
            ),
          ),
          //rating
          Positioned(
            top: 32,
            right: 32,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Text(
                  "${movie.voteAverage.toStringAsFixed(1)}(${movie.voteCount})",
                ),
              ],
            ),
          ),
          //play button
          Positioned(
            right: 32,
            bottom: 10,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: AppColor.primaryColor,
                borderRadius: BorderRadius.circular(25),
              ),
              child: const Icon(
                Icons.play_arrow_sharp,
                size: 40,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
