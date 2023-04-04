import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:muviee/features/movie_detail/domain/entities/review/review_entity.dart';

class ReviewItem extends StatelessWidget {
  const ReviewItem({this.review, Key? key}) : super(key: key);

  final ReviewEntity? review;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 280,
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.5),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //avatar and name
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://th.bing.com/th/id/OIP.64GgWje_ynFTjhu93we44gHaHO?w=187&h=183&c=7&r=0&o=5&pid=1.7"),
            ),
            title: Text("Tran Khoi"),
            subtitle: Text("Vietnam"),
          ),
          //content
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "phim hay tuyet voi xem maiphim hay tuyet voi xem mai khong chanphim hay tuyet voi xem mai khong chan. uoc gi. uoc gi. uoc gi co ai di xem cùng quá hay qua tuyet voi phim hay tuyet voi xem mai khong chan. uoc gi",
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const Spacer(),
          //rating
          Padding(
            padding: const EdgeInsets.all(16).copyWith(top: 0),
            child: Row(
              children: [
                RatingBar.builder(
                  initialRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  ignoreGestures: true,
                  itemSize: 20,
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  onRatingUpdate: (double value) {},
                ),
                const Spacer(),
                Text("1W ago"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
