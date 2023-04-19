part of actor;

class ActorDetailPage extends StatelessWidget {
  const ActorDetailPage(this.actor, {Key? key}) : super(key: key);

  final ActorEntity actor;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => injector<ActorCubit>()..getMovieOfActor(actor.person.id),
      child: AppScaffold(
        isHaveAppBar: true,
        body: SingleChildScrollView(
          child: Column(
            children: [
              ActorBanner(actor: actor),
              ActorDes(actor: actor),
              const ActorInMovie(),
            ],
          ),
        ),
      ),
    );
  }
}
