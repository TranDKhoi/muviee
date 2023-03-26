part of 'bottombar_cubit.dart';

@immutable
abstract class BottombarState extends Equatable {}

class BottombarInitial extends BottombarState {
  final int currentIndex;

  BottombarInitial({required this.currentIndex});

  @override
  List<Object?> get props => [currentIndex];
}
