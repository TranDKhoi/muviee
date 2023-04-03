import 'package:flutter/material.dart';
import 'package:muviee/config/styles.dart';
import 'package:muviee/utils/extensions/duration_extension.dart';

import '../models/movie_entity.dart';

class VerticalMovieItem extends StatelessWidget {
  const VerticalMovieItem(this.movie, {Key? key}) : super(key: key);
  final MovieEntity movie;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              movie.posterPath,
              height: 200,
              width: 150,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 5),
          ConstrainedBox(
            constraints: const BoxConstraints(minHeight: 50),
            child: Text(
              movie.title,
              textAlign: TextAlign.start,
              style: AppStyle.mediumTitleTextStyle,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
          Row(
            children: [
              Text(Duration(minutes: movie.runtime)
                  .format(DurationStyle.FORMAT_HH_MM)),
              const Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(Icons.star, color: Colors.yellow),
                  const SizedBox(width: 5),
                  Text(movie.voteAverage.toStringAsFixed(1)),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
