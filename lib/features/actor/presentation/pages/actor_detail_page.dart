part of actor;

class ActorDetailPage extends StatelessWidget {
  const ActorDetailPage(this.person, {Key? key}) : super(key: key);

  final PersonEntity person;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => injector<ActorCubit>()..getMovieOfActor(person.id),
      child: AppScaffold(
        isHaveAppBar: true,
        body: SingleChildScrollView(
          child: Column(
            children: [
              ActorBanner(person: person),
              ActorDes(person: person),
              const ActorInMovie(),
            ],
          ),
        ),
      ),
    );
  }
}
