import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'bottombar_state.dart';

class BottombarCubit extends Cubit<BottombarState> {
  BottombarCubit() : super(BottombarInitial(currentIndex: 0));

  void changePage(int i) {
    emit(BottombarInitial(currentIndex: i));
  }
}
