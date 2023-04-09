part of 'bottombar_cubit.dart';

@immutable
abstract class BottomBarState extends Equatable {}

class BottomBarInitial extends BottomBarState {
  final int currentIndex;

  BottomBarInitial({required this.currentIndex});

  @override
  List<Object?> get props => [currentIndex];
}
