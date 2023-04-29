import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:muviee/config/colors.dart';
import 'package:muviee/utils/extensions/translate_extension.dart';

import '../../config/langs/r.dart';
import '../home/presentation/home.dart';
import '../profile/presentation/profile.dart';
import '../search/presentation/search.dart';
import '../watching/watching.dart';
import 'cubit/bottombar_cubit.dart';

class BottomBarPage extends StatelessWidget {
  const BottomBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: context.read<BottomBarCubit>().controller,
        builder: (_, val, __) => PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: context.read<BottomBarCubit>().pageController,
            children: [
              const HomePage(),
              const SearchPage(),
              WatchingPage(controller: context.read<BottomBarCubit>().controller.value),
              const ProfilePage(),
            ]),
      ),
      bottomNavigationBar: context.read<BottomBarCubit>().state.props[0] as bool
          ? null
          : ValueListenableBuilder(
              valueListenable: context.read<BottomBarCubit>().currentIndex,
              builder: (_, val, __) => BottomNavigationBar(
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: const Icon(Icons.home),
                    label: R.home.translate,
                  ),
                  BottomNavigationBarItem(
                    icon: const Icon(Icons.search),
                    label: R.search.translate,
                  ),
                  BottomNavigationBarItem(
                    icon: const Icon(Icons.live_tv_outlined),
                    label: R.watching.translate,
                  ),
                  BottomNavigationBarItem(
                    icon: const Icon(Icons.person),
                    label: R.profile.translate,
                  ),
                ],
                currentIndex: val,
                selectedItemColor: AppColor.primaryColor,
                unselectedItemColor: Colors.grey,
                onTap: (i) => context.read<BottomBarCubit>().changePage(i),
              ),
            ),
    );
  }
}
