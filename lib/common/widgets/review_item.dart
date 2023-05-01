import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:muviee/utils/navigation_util.dart';

import '../../features/movie_detail/domain/review/review_entity.dart';

class ReviewItem extends StatelessWidget {
  const ReviewItem(this.review, {Key? key}) : super(key: key);

  final ReviewEntity review;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () {
        _showFullReview(context);
      },
      child: Container(
        height: 80,
        width: 280,
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.5), borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //avatar and name
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://th.bing.com/th/id/OIP.64GgWje_ynFTjhu93we44gHaHO?w=187&h=183&c=7&r=0&o=5&pid=1.7"),
              ),
              title: Text(review.authorDetails.username),
              subtitle: Text(review.authorDetails.country.name),
            ),
            //content
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                review.content,
                maxLines: 3,
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
                    initialRating: review.rating / 2,
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
                  const Text("1W ago"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showFullReview(context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) {
        return AlertDialog(
          contentPadding: const EdgeInsets.all(16),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //avatar and name
              ListTile(
                leading: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://th.bing.com/th/id/OIP.64GgWje_ynFTjhu93we44gHaHO?w=187&h=183&c=7&r=0&o=5&pid=1.7"),
                ),
                title: Text(review.authorDetails.username),
                subtitle: Text(review.authorDetails.country.name),
                trailing: GestureDetector(
                    onTap: () => NavigationUtil.pop(), child: const Icon(Icons.close)),
              ),
              //content
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SizedBox(
                  height: 200,
                  child: SingleChildScrollView(
                    child: Text(
                      review.content,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              //rating
              Padding(
                padding: const EdgeInsets.all(16).copyWith(top: 0),
                child: Row(
                  children: [
                    Tooltip(
                      message: review.rating.toString(),
                      triggerMode: TooltipTriggerMode.tap,
                      child: RatingBar.builder(
                        initialRating: review.rating / 2,
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
                    ),
                    const Spacer(),
                    const Text("1W ago"),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
