import 'package:muviee/common/models/user_entity.dart';

class ReviewEntity {
  final String author;
  final UserEntity authorDetails;
  final String content;
  final String id;

  const ReviewEntity({
    required this.author,
    required this.authorDetails,
    required this.content,
    required this.id,
  });
}
