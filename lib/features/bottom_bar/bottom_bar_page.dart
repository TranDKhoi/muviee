import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:muviee/config/colors.dart';
import 'package:muviee/features/home/presentation/home.dart';

import 'cubit/bottombar_cubit.dart';

class BottomBarPage extends StatelessWidget {
  BottomBarPage({Key? key}) : super(key: key);

  final List<Widget> listPage = [
    HomePage(),
    Center(),
    Center(),
    const Center(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottombarCubit(),
      child: BlocBuilder<BottombarCubit, BottombarState>(
        builder: (context, state) {
          if (state is BottombarInitial) {
            return Scaffold(
              body: listPage[state.currentIndex],
              bottomNavigationBar: BottomNavigationBar(
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
                    icon: Icon(Icons.save_alt_rounded),
                    label: 'Saved',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label: 'Profile',
                  ),
                ],
                currentIndex: state.currentIndex,
                selectedItemColor: AppColor.primaryColor,
                unselectedItemColor: Colors.grey,
                onTap: (i) => context.read<BottombarCubit>().changePage(i),
              ),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
