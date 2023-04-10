part of watching;

extension WatchingField on WatchingPageState {
  GestureDetector watchingField(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isShowButton = !isShowButton;
        });
      },
      child: SizedBox(
        width: context.screenSize.width,
        child: AspectRatio(
          aspectRatio: isFullMode
              ? context.screenSize.width / context.screenSize.height
              : _controller.value.aspectRatio,
          child: Stack(
            children: [
              //video
              VideoPlayer(_controller),
              //play button
              ControlButton(
                isShowButton: isShowButton,
                controller: _controller,
              ),
              //seek bar
              Positioned(
                bottom: 16,
                child: SizedBox(
                  width: context.screenSize.width,
                  child: BlocBuilder<WatchingCubit, WatchingState>(
                    builder: (context, state) {
                      return Visibility(
                        maintainState: true,
                        visible: isShowButton,
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
                            context.read<BottomBarCubit>().toggleBottomBar(isFullMode);
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),
              //volume bar
              Positioned(
                top: 32,
                right: 32,
                child: SizedBox(
                  width: 120,
                  child: Visibility(
                    maintainState: true,
                    visible: isShowButton,
                    child: VolumeBar(onVolumeChanged: (val) {
                      _controller.setVolume(val);
                    }),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
