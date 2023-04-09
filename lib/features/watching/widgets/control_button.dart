part of watching;

class ControlButton extends StatefulWidget {
  const ControlButton({
    super.key,
    required this.isShowButton,
    required VideoPlayerController controller,
  }) : _controller = controller;

  final bool isShowButton;
  final VideoPlayerController _controller;

  @override
  State<ControlButton> createState() => _ControlButtonState();
}

class _ControlButtonState extends State<ControlButton> {
  bool isPaused = true;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: widget.isShowButton,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () => widget._controller.seekTo(
                widget._controller.value.position - const Duration(seconds: 15),
              ),
              child: const Icon(
                Icons.skip_previous_rounded,
                size: 50,
              ),
            ),
            GestureDetector(
              onTap: () {
                if (widget._controller.value.isPlaying) {
                  widget._controller.pause();
                  setState(() {
                    isPaused = true;
                  });
                } else {
                  widget._controller.play();
                  setState(() {
                    isPaused = false;
                  });
                }
              },
              child: Icon(
                isPaused ? Icons.play_arrow_rounded : Icons.pause,
                size: 50,
              ),
            ),
            GestureDetector(
              onTap: () => widget._controller.seekTo(
                widget._controller.value.position + const Duration(seconds: 15),
              ),
              child: const Icon(
                Icons.skip_next_rounded,
                size: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
