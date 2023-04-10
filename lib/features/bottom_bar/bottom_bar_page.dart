import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:muviee/config/colors.dart';

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
                    items: const <BottomNavigationBarItem>[
                      BottomNavigationBarItem(
                        icon: Icon(Icons.home),
                        label: 'Home',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.search),
                        label: 'Search',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.live_tv_outlined),
                        label: 'Watching',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.person),
                        label: 'Profile',
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
