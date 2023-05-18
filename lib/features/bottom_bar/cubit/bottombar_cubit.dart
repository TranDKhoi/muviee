import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:muviee/common/entity/movie_video_entity.dart';
import 'package:video_player/video_player.dart';

part 'bottombar_state.dart';

class BottomBarCubit extends Cubit<BottomBarState> {
  BottomBarCubit() : super(BottomBarInitial());
  final PageController pageController = PageController(initialPage: 0);
  ValueNotifier<VideoPlayerController?> controller = ValueNotifier<VideoPlayerController?>(null);
  ValueNotifier<int> currentIndex = ValueNotifier<int>(0);

  void changePage(int i) {
    pageController.jumpToPage(i);
    currentIndex.value = i;
  }

  void navigateToWatchingTab(MovieVideoEntity currentMovie) {
    controller.value = VideoPlayerController.network(currentMovie.key);
    // controller.value = VideoPlayerController.network(
    //     "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4");
    changePage(2);
  }

  void toggleBottomBar(bool isFullMode) {
    if (state is BottomBarInitial) {
      emit((state as BottomBarInitial).copyWith(isHidden: isFullMode));
    }
  }
}
