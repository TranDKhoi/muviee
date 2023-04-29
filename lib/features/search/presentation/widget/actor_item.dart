part of search;

class ActorItem extends StatelessWidget {
  const ActorItem(this.person, {Key? key}) : super(key: key);

  final PersonEntity person;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        NavigationUtil.push(page: ActorDetailPage(person));
      },
      child: SizedBox(
        width: context.screenSize.width / 4,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                person.profilePath,
                errorBuilder: (_, __, ___) => Image.asset(
                  "assets/images/default_avt.png",
                  width: context.screenSize.width / 4,
                ),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              "${person.name}\n",
              maxLines: 2,
            ),
          ],
        ),
      ),
    );
  }
}
