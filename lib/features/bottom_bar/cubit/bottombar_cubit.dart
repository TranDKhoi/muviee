import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:muviee/common/entity/movie_video_entity.dart';
import 'package:muviee/features/profile/presentation/profile.dart';
import 'package:muviee/features/watching/page/empty_page.dart';
import 'package:muviee/features/watching/watching.dart';

import '../../home/presentation/home.dart';
import '../../search/presentation/search.dart';

part 'bottombar_state.dart';

class BottomBarCubit extends Cubit<BottomBarState> {
  BottomBarCubit() : super(BottomBarInitial(currentIndex: 0));
  final PageController pageController = PageController(initialPage: 0);

  final List<Widget> listPage = [
    const HomePage(),
    SearchPage(),
    const EmptyPage(),
    const ProfilePage(),
  ];

  void changePage(int i) {
    pageController.jumpToPage(i);
    emit(BottomBarInitial(currentIndex: i));
  }

  void navigateToWatchingTab(MovieVideoEntity currentMovie) {
    listPage[2] = WatchingPage(currentMovie: currentMovie);
    changePage(2);
  }

  void toggleBottomBar(bool isFullMode) {
    if (state is BottomBarInitial) {
      emit((state as BottomBarInitial).copyWith(isHidden: isFullMode));
    }
  }
}
