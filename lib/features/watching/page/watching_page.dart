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

  final cmtCtr = TextEditingController();
  CancelToken cancelToken = CancelToken();
  double rating = 0;
  String percentage = "0%";

  bool isShowButton = true;
  bool isFullMode = false;
  bool isError = false;
  bool isDownloading = false;
  Duration videoDuration = const Duration();
  int currentVideoId = -1;

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
                                  Row(
                                    children: [
                                      Text(
                                        R.options.translate,
                                        style: AppStyle.mediumTitleTextStyle,
                                        textAlign: TextAlign.start,
                                      ),
                                      const Spacer(),
                                      OptionItem(
                                          text: R.share.translate,
                                          icon: Icons.share_rounded,
                                          onTap: () {}),
                                      Visibility(
                                        visible: !isDownloading,
                                        child: OptionItem(
                                            text: R.download.translate,
                                            icon: Icons.download_rounded,
                                            onTap: () {
                                              setState(() {
                                                isDownloading = true;
                                              });
                                              _handleDownloadFile();
                                            }),
                                      ),
                                      Visibility(
                                        visible: isDownloading,
                                        child: OptionItem(
                                            text: percentage,
                                            icon: Icons.download_rounded,
                                            onTap: () {
                                              setState(() {
                                                isDownloading = false;
                                              });
                                              cancelToken.cancel();
                                              cancelToken = CancelToken();
                                            }),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 16),
                                  //review
                                  Builder(builder: (context) {
                                    return MReviewField(
                                      onRatingChanged: (val) => rating = val * 2,
                                      cmtCtr: cmtCtr,
                                      onSubmit: () {
                                        context.read<WatchingCubit>().submitReview(
                                              GlobalData.ins.currentMovieId!,
                                              cmtCtr.text,
                                              rating,
                                            );
                                      },
                                    );
                                  }),
                                ],
                              ),
                            ),
                            FutureBuilder(
                              future: _cubit.getSimilarMovie(GlobalData.ins.currentMovieId ?? -1),
                              builder: (ctx, snapshot) {
                                if (snapshot.connectionState == ConnectionState.done) {
                                  if (snapshot.hasData) {
                                    return SimilarMovie(snapshot.data ?? []);
                                  }
                                }
                                return const CupertinoActivityIndicator();
                              },
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
      if (currentVideoId != GlobalData.ins.currentMovieId) {
        widget.controller!.initialize();
        currentVideoId = GlobalData.ins.currentMovieId ?? 0;
      }
      if (!widget.controller!.hasListeners) {
        widget.controller?.addListener(listener);
      }
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
      if (currentVideoId != GlobalData.ins.currentMovieId) {
        widget.controller!.initialize();
        currentVideoId = GlobalData.ins.currentMovieId!;
      }
      if (!widget.controller!.hasListeners) {
        widget.controller?.addListener(listener);
      }
    }
  }

  void _handleDownloadFile() {
    DownloadUtil.downloadVideo(widget.controller!.dataSource, cancelToken, (received, total) {
      if (total != -1) {
        setState(() {
          percentage = '${((received / total) * 100).toStringAsFixed(0)}%';
        });
      }
      if (received == total) {
        setState(() {
          isDownloading = false;
        });
        AlertUtil.showToast("Download success");
      }
    }, () {
      setState(() {
        isDownloading = false;
      });
    });
  }
}
