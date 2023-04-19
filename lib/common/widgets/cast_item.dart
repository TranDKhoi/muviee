import 'package:flutter/material.dart';

import '../../features/actor/presentation/actor.dart';
import '../../utils/navigation_util.dart';
import '../entity/actor/actor_entity.dart';

class CastItem extends StatelessWidget {
  const CastItem(this.actor, {Key? key}) : super(key: key);

  final ActorEntity actor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        NavigationUtil.push(page: ActorDetailPage(actor));
      },
      child: SizedBox(
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
      ),
    );
  }
}
