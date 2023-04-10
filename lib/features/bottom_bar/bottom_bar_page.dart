import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:muviee/config/colors.dart';
import 'package:muviee/utils/extensions/translate_extension.dart';

import '../../config/langs/r.dart';
import 'cubit/bottombar_cubit.dart';

class BottomBarPage extends StatelessWidget {
  const BottomBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomBarCubit, BottomBarState>(
      builder: (context, state) {
        if (state is BottomBarInitial) {
          return Scaffold(
            body: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: context.read<BottomBarCubit>().pageController,
              children: context.read<BottomBarCubit>().listPage,
            ),
            bottomNavigationBar: state.isHidden
                ? null
                : BottomNavigationBar(
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
                    currentIndex: state.currentIndex,
                    selectedItemColor: AppColor.primaryColor,
                    unselectedItemColor: Colors.grey,
                    onTap: (i) => context.read<BottomBarCubit>().changePage(i),
                  ),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
