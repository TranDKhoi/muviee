part of watching;

class WatchingPage extends StatefulWidget {
  const WatchingPage({this.controller, Key? key}) : super(key: key);

  final VideoPlayerController? controller;

  @override
  State<WatchingPage> createState() => WatchingPageState();
}

class WatchingPageState extends State<WatchingPage>
    with AutomaticKeepAliveClientMixin<WatchingPage> {
  final _cubit = injector<WatchingCubit>();

  bool isShowButton = true;
  bool isFullMode = false;
  bool isError = false;
  Duration videoDuration = const Duration();
  String currentVideoKey = "";

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return VisibilityDetector(
      key: const Key("key"),
      onVisibilityChanged: _onVisibilityChanged,
      child: WillPopScope(
        onWillPop: () async {
          return await willPopHandler();
        },
        child: BlocProvider(
          create: (_) => _cubit,
          child: Scaffold(
            body: widget.controller == null
                ? const EmptyPage()
                : widget.controller!.value.isInitialized
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
                    : isError
                        ? Center(child: Text(R.getMovieFailed.translate))
                        : const Center(child: CircularProgressIndicator()),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    if (widget.controller != null) {
      currentVideoKey = widget.controller!.dataSource;
    }
  }

  void listener() {
    _cubit.onPositionProgress(widget.controller!.value.position);
    if (widget.controller!.value.hasError) {
      setState(() {
        isError = true;
      });
    }
    if (widget.controller!.value.isInitialized) {
      setState(() {
        videoDuration = widget.controller!.value.duration;
      });
    }
    if (widget.controller!.value.isBuffering) {}
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

  void _onVisibilityChanged(VisibilityInfo info) async {
    await Future.delayed(const Duration(seconds: 0));
    if (widget.controller != null) {
      if (currentVideoKey != widget.controller!.dataSource) {
        widget.controller!.initialize();
        currentVideoKey = widget.controller!.dataSource;
      }
    }
    widget.controller?.addListener(listener);
  }
}
