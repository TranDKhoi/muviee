part of review;

class UserReview extends StatelessWidget {
  const UserReview(this.review, {Key? key}) : super(key: key);

  final MyReviewEntity review;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () {
        _showFullReview(context);
      },
      onLongPress: () async {
        var res = await showDialog(context: context, builder: (ctx) => const DeleteReviewDialog());
        if (res != null && res) {
          if (context.mounted) {
            context.read<ReviewBloc>().add(DeleteReviewEvent(review.id));
          }
        }
      },
      child: Container(
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
              title: Text(GlobalData.ins.currentUser?.username ?? "Username"),
              subtitle: const Text("Việt Nam"),
              trailing: GestureDetector(
                onTap: () {
                  _showEdit(context);
                },
                child: const Icon(Icons.edit),
              ),
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
                  Text(timeago.format(review.createdAt.toMyTime,
                      locale: LanguageUtil.currentLanguage)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showFullReview(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) {
        return AlertDialog(
          contentPadding: const EdgeInsets.all(16),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // avatar and name
              ListTile(
                leading: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://th.bing.com/th/id/OIP.64GgWje_ynFTjhu93we44gHaHO?w=187&h=183&c=7&r=0&o=5&pid=1.7"),
                ),
                title: Text(GlobalData.ins.currentUser?.username ?? "Username"),
                subtitle: const Text("Việt Nam"),
                trailing: GestureDetector(
                    onTap: () => NavigationUtil.pop(), child: const Icon(Icons.close)),
              ),
              //content
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxHeight: context.screenSize.height / 4),
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
                    Text(timeago.format(review.createdAt.toMyTime,
                        locale: LanguageUtil.currentLanguage)),
                  ],
                ),
              ),
              //movie info
              Text(
                review.movie.title,
                textAlign: TextAlign.center,
                style: AppStyle.mediumTitleTextStyle,
              ),
              const SizedBox(height: 16),
              Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.network(
                        review.movie.backdropPath,
                        height: context.screenSize.height / 3.7,
                        width: context.screenSize.width - AppDimens.SCREEN_PADDING * 2,
                        fit: BoxFit.cover,
                        errorBuilder: (_, __, ___) => Image.network(
                          review.movie.posterPath,
                          height: context.screenSize.height / 3.7,
                          width: context.screenSize.width - AppDimens.SCREEN_PADDING * 2,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    //play button
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          context.read<ReviewBloc>().add(GetMovieVideoEvent(review.movie.id));
                        },
                        child: ClipOval(
                          child: Container(
                            width: 50,
                            height: 50,
                            color: Colors.grey.withOpacity(0.5),
                            child: const Icon(
                              Icons.play_arrow_sharp,
                              size: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _showEdit(BuildContext context) {
    final cmtCtr = TextEditingController()..text = review.content;
    double rating = review.rating;

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) {
        return AlertDialog(
          contentPadding: const EdgeInsets.all(16),
          content: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                //options
                Row(
                  children: [
                    Text(
                      R.editComment.translate,
                      style: AppStyle.mediumTitleTextStyle,
                      textAlign: TextAlign.start,
                    ),
                    const Spacer(),
                    GestureDetector(
                        onTap: () => NavigationUtil.pop(), child: const Icon(Icons.close)),
                  ],
                ),
                RatingBar.builder(
                  initialRating: rating,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 20,
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  onRatingUpdate: (val) => rating = val * 2,
                ),
                const SizedBox(height: AppDimens.SPACING),
                MTextField(
                  maxLines: 4,
                  controller: cmtCtr,
                  hintText: "${R.yourComment.translate}...",
                ),
                const SizedBox(height: AppDimens.SPACING),
                FilledButton(
                  onPressed: () {
                    context
                        .read<ReviewBloc>()
                        .add(EditReviewEvent(id: review.id, content: cmtCtr.text, rating: rating));
                  },
                  child: Text(R.submit.translate),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
