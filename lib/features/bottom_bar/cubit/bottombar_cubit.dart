import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:muviee/common/models/movie_video_entity.dart';
import 'package:muviee/features/watching/watching.dart';

import '../../home/presentation/home.dart';

part 'bottombar_state.dart';

class BottomBarCubit extends Cubit<BottomBarState> {
  BottomBarCubit() : super(BottomBarInitial(currentIndex: 0));
  final PageController pageController = PageController(initialPage: 0);

  final List<Widget> listPage = [
    HomePage(),
    Center(),
    const Center(),
    const Center(),
  ];

  void changePage(int i) {
    pageController.jumpToPage(i);
    emit(BottomBarInitial(currentIndex: i));
  }

  void navigateToWatchingTab(MovieVideoEntity currentMovie) {
    listPage[2] = WatchingPage(currentMovie: currentMovie);
    changePage(2);
  }
}
