extension ConvertToShortForm on int {
  String get toShortForm {
    if (this >= 100000000) {
      return '${(this / 1000000).toStringAsFixed(0)}M';
    } else if (this >= 10000000) {
      return '${(this / 1000000).toStringAsFixed(1)}M';
    } else if (this >= 1000000) {
      return '${(this / 1000000).toStringAsFixed(2)}M';
    } else if (this >= 100000) {
      return '${(this / 1000).toStringAsFixed(0)}K';
    } else if (this >= 10000) {
      return '${(this / 1000).toStringAsFixed(1)}K';
    } else if (this >= 1000) {
      return '${(this / 1000).toStringAsFixed(2)}K';
    } else {
      return '$this';
    }
  }
}
