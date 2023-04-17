part of actor;

class ActorBanner extends StatelessWidget {
  const ActorBanner({
    super.key,
    required this.actor,
  });

  final ActorEntity actor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenSize.height / 2,
      child: Stack(
        alignment: Alignment.center,
        children: [
          ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
            child: Image.asset(
              "assets/images/carpet.jpg",
              width: double.infinity,
              fit: BoxFit.contain,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  radius: context.screenSize.width / 5,
                  backgroundImage: NetworkImage(actor.person.profilePath),
                ),
              ),
              const SizedBox(height: AppDimens.SPACING),
              Text(
                actor.person.name,
                style: AppStyle.largeTitleTextStyle,
              ),
              const SizedBox(height: AppDimens.SPACING),
              Text(actor.person.placeOfBirth),
              const SizedBox(height: AppDimens.SPACING),
              Text(FormatUtil.toDDMMYY(actor.person.birthday)),
            ],
          ),
        ],
      ),
    );
  }
}
