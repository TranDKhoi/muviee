part of 'bottombar_cubit.dart';

@immutable
abstract class BottomBarState extends Equatable {}

class BottomBarInitial extends BottomBarState {
  final bool isHidden;

  BottomBarInitial({
    this.isHidden = false,
  });

  @override
  List<Object?> get props => [
        isHidden,
      ];

  BottomBarInitial copyWith({
    int? currentIndex,
    bool? isHidden,
    VideoPlayerController? controller,
  }) {
    return BottomBarInitial(
      isHidden: isHidden ?? this.isHidden,
    );
  }
}
