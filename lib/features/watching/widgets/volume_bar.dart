part of watching;

class VolumeBar extends StatefulWidget {
  final double volume;
  final ValueChanged<double> onVolumeChanged;

  const VolumeBar({super.key, this.volume = 1.0, required this.onVolumeChanged});

  @override
  State<VolumeBar> createState() => _VolumeBarState();
}

class _VolumeBarState extends State<VolumeBar> {
  double _volume = 0.0;

  @override
  void initState() {
    super.initState();
    _volume = widget.volume;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Icon(Icons.volume_up),
          Expanded(
            child: SliderTheme(
              data: SliderThemeData(
                inactiveTrackColor: Theme.of(context).dividerColor,
                activeTrackColor: Colors.grey,
                trackHeight: 2.0,
                thumbColor: Colors.white,
                thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 8.0),
              ),
              child: Slider(
                min: 0,
                max: 1,
                value: _volume,
                onChanged: (value) {
                  setState(() {
                    _volume = value;
                  });
                },
                onChangeEnd: (val) {
                  widget.onVolumeChanged(val);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
