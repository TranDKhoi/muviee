import 'package:flutter/material.dart';
import 'package:muviee/config/dimens.dart';
import 'package:muviee/config/styles.dart';
import 'package:muviee/features/movie_detail/presentation/movie_detail.dart';
import 'package:muviee/utils/extensions/context_extension.dart';
import 'package:muviee/utils/extensions/duration_extension.dart';
import 'package:muviee/utils/navigation_util.dart';

import '../../config/colors.dart';
import '../entity/movie_entity.dart';

class HorizontalMovieItem extends StatelessWidget {
  const HorizontalMovieItem(this.movie, {Key? key}) : super(key: key);

  final MovieEntity movie;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        NavigationUtil.push(page: MovieDetailPage(movie));
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
                  errorBuilder: (_, __, ___) => SizedBox(
                    width: context.screenSize.width * 0.3,
                    child: const Placeholder(),
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
