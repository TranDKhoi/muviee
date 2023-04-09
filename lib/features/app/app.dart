import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:muviee/config/theme.dart';

import '../../../utils/global_keys.dart';
import '../../utils/language_util.dart';
import '../bottom_bar/cubit/bottombar_cubit.dart';
import '../onboarding/presentation/pages/onboarding_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomBarCubit(),
      child: MaterialApp(
        home: const OnboardingPage(),
        navigatorKey: navigatorKey,
        scaffoldMessengerKey: scaffoldKey,
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.dark,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: LanguageUtil.ins.supportedLocales,
        locale: LanguageUtil.ins.currentLocale,
      ),
    );
  }
}
