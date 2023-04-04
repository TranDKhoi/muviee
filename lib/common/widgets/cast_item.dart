import 'package:flutter/material.dart';
import 'package:muviee/features/movie_detail/domain/entities/actor/actor_entity.dart';

class CastItem extends StatelessWidget {
  const CastItem(this.actor, {Key? key}) : super(key: key);

  final ActorEntity actor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              actor.person.profilePath,
              errorBuilder: (_, __, ___) => Image.asset(
                "assets/images/default_avt.png",
                height: 90,
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(actor.person.name),
        ],
      ),
    );
  }
}
