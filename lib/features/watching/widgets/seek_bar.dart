part of watching;

class SeekBar extends StatefulWidget {
  final Duration duration;
  final Duration position;
  final ValueChanged<Duration> onDrag;
  final VoidCallback onFullTap;

  const SeekBar({
    super.key,
    required this.duration,
    required this.position,
    required this.onDrag,
    required this.onFullTap,
  });

  @override
  createState() => _SeekBarState();
}

class _SeekBarState extends State<SeekBar> {
  double _dragValue = 0.0;

  @override
  void didUpdateWidget(covariant SeekBar oldWidget) {
    super.didUpdateWidget(oldWidget);
    _dragValue = widget.position.inMilliseconds.toDouble();
  }

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: const SliderThemeData(
        trackHeight: 2.0,
        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 6.0),
        overlayShape: RoundSliderOverlayShape(overlayRadius: 14.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            Text(widget.position.format(DurationStyle.FORMAT_HH_MM_SS)),
            Expanded(
              child: Slider(
                min: 0.0,
                max: widget.duration.inMilliseconds.toDouble(),
                value: _dragValue,
                onChanged: (value) {
                  setState(() {
                    _dragValue = value;
                  });
                },
                onChangeEnd: (value) {
                  widget.onDrag(Duration(milliseconds: value.round()));
                  setState(() {
                    _dragValue = value;
                    widget.onDrag(Duration(milliseconds: value.round()));
                  });
                },
                activeColor: Colors.red,
                inactiveColor: Colors.grey,
              ),
            ),
            Text(widget.duration.format(DurationStyle.FORMAT_HH_MM_SS)),
            const SizedBox(width: 10),
            GestureDetector(
              onTap: widget.onFullTap,
              child: const Icon(Icons.fullscreen_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
