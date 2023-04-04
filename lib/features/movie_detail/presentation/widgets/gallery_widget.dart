part of movie_detail;

class GalleryWidget extends StatelessWidget {
  const GalleryWidget(
    this.images, {
    super.key,
  });

  final List<ImageInfoEntity> images;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: AppDimens.SCREEN_PADDING),
          child: Text(
            R.preview.translate,
            style: AppStyle.largeTitleTextStyle,
          ),
        ),
        const SizedBox(height: 16),
        LimitedBox(
          maxHeight: 180,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, i) => ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(images[i].filePath)),
              itemCount: images.length,
              separatorBuilder: (_, __) => const SizedBox(width: 16),
            ),
          ),
        ),
        const SizedBox(height: 32),
      ],
    );
  }
}
