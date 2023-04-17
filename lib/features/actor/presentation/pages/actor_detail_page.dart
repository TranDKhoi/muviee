part of actor;

class ActorDetailPage extends StatelessWidget {
  const ActorDetailPage(this.actor, {Key? key}) : super(key: key);

  final ActorEntity actor;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      isHaveAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ActorBanner(actor: actor),
            Padding(
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
                    actor.person.biography,
                    trimLines: 5,
                    colorClickableText: Colors.pink,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: R.more.translate,
                    trimExpandedText: R.less.translate,
                    moreStyle: AppStyle.pinkBoldStyle,
                    lessStyle: AppStyle.pinkBoldStyle,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
