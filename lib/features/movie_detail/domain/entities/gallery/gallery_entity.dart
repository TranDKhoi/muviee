import 'image_info_entity.dart';

class GalleryEntity {
  final int id;
  List<ImageInfoEntity> posters;
  List<ImageInfoEntity> backdrops;

  GalleryEntity({
    required this.id,
    required this.posters,
    required this.backdrops,
  });
}
