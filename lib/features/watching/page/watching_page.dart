part of watching;

class WatchingPage extends StatefulWidget {
  const WatchingPage({this.currentMovie, Key? key}) : super(key: key);

  final MovieVideoEntity? currentMovie;

  @override
  State<WatchingPage> createState() => WatchingPageState();
}

class WatchingPageState extends State<WatchingPage>
    with AutomaticKeepAliveClientMixin<WatchingPage> {
  late VideoPlayerController _controller;

  final _cubit = injector<WatchingCubit>();

  bool isShowButton = true;
  bool isFullMode = false;
  Duration videoDuration = const Duration();

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return WillPopScope(
      onWillPop: () async {
        return await willPopHandler();
      },
      child: BlocProvider(
        create: (_) => _cubit,
        child: Scaffold(
          body: _controller.value.isInitialized
              ? SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      watchingField(context),
                      Padding(
                        padding: const EdgeInsets.all(AppDimens.SCREEN_PADDING),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            //options
                            Text(
                              R.options.translate,
                              style: AppStyle.mediumTitleTextStyle,
                              textAlign: TextAlign.start,
                            ),
                            Row(
                              children: [
                                RatingBar.builder(
                                  initialRating: 0,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemSize: 20,
                                  itemBuilder: (context, _) => const Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  onRatingUpdate: (double value) {},
                                ),
                                const Spacer(),
                                OptionItem(
                                    text: R.share.translate,
                                    icon: Icons.share_rounded,
                                    onTap: () {}),
                                OptionItem(
                                    text: R.download.translate,
                                    icon: Icons.download_rounded,
                                    onTap: () {}),
                              ],
                            ),
                            const SizedBox(height: 16),
                            //review
                            Text(
                              R.review.translate,
                              style: AppStyle.mediumTitleTextStyle,
                              textAlign: TextAlign.start,
                            ),
                            Row(
                              children: [
                                RatingBar.builder(
                                  initialRating: 0,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemSize: 20,
                                  itemBuilder: (context, _) => const Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  onRatingUpdate: (double value) {},
                                ),
                                const Spacer(),
                                OptionItem(
                                    text: R.share.translate,
                                    icon: Icons.share_rounded,
                                    onTap: () {}),
                                OptionItem(
                                    text: R.download.translate,
                                    icon: Icons.download_rounded,
                                    onTap: () {}),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              : const Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    if (widget.currentMovie != null) {
      _controller =
          VideoPlayerController.network(widget.currentMovie!.key.replaceFirst("http", "https"))
            ..initialize().then((_) {
              setState(() {
                videoDuration = _controller.value.duration;
              });

              _controller.addListener(() {
                _cubit.onPositionProgress(_controller.value.position);
              });
            });
    }
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  bool get wantKeepAlive => true;

  willPopHandler() {
    if (isFullMode) {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
      ]);
      setState(() {
        isFullMode = !isFullMode;
      });
      context.read<BottomBarCubit>().toggleBottomBar(isFullMode);
    } else {
      context.read<BottomBarCubit>().changePage(0);
    }
    return false;
  }
}
