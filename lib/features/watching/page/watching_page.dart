part of watching;

class WatchingPage extends StatefulWidget {
  const WatchingPage({this.currentMovie, Key? key}) : super(key: key);

  final MovieVideoEntity? currentMovie;

  @override
  State<WatchingPage> createState() => _WatchingPageState();
}

class _WatchingPageState extends State<WatchingPage>
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
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitUp,
        ]);
        context.read<BottomBarCubit>().changePage(0);
        return false;
      },
      child: BlocProvider(
        create: (_) => _cubit,
        child: Scaffold(
          body: _controller.value.isInitialized
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      isShowButton = !isShowButton;
                    });
                  },
                  child: SizedBox(
                    width: context.screenSize.width,
                    child: AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: Stack(
                        children: [
                          VideoPlayer(_controller),
                          ControlButton(
                              isShowButton: isShowButton,
                              controller: _controller),
                          Visibility(
                            visible: isShowButton,
                            child: Positioned(
                              bottom: 16,
                              child: BlocBuilder<WatchingCubit, WatchingState>(
                                builder: (context, state) {
                                  return SizedBox(
                                    width: context.screenSize.width,
                                    child: SeekBar(
                                      duration: videoDuration,
                                      position: state.props[0] as Duration,
                                      onDrag: (val) {
                                        _controller.seekTo(val);
                                      },
                                      onFullTap: () {
                                        SystemChrome.setPreferredOrientations([
                                          !isFullMode
                                              ? DeviceOrientation.landscapeRight
                                              : DeviceOrientation.portraitUp,
                                        ]);
                                        setState(() {
                                          isFullMode = !isFullMode;
                                        });
                                      },
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
      _controller = VideoPlayerController.network(
          widget.currentMovie!.key.replaceFirst("http", "https"))
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
}
