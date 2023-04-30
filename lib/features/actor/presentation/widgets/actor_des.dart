part of actor;

class ActorDes extends StatelessWidget {
  const ActorDes({
    super.key,
    required this.person,
  });

  final PersonEntity person;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDimens.SCREEN_PADDING),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            "Bio",
            style: AppStyle.largeTitleTextStyle,
          ),
          const SizedBox(height: AppDimens.SPACING),
          ReadMoreText(
            person.biography,
            trimLines: 5,
            colorClickableText: Colors.pink,
            trimMode: TrimMode.Line,
            trimCollapsedText: R.more.translate,
            trimExpandedText: R.less.translate,
            moreStyle: AppStyle.primaryColorBoldStyle,
            lessStyle: AppStyle.primaryColorBoldStyle,
          ),
        ],
      ),
    );
  }
}
