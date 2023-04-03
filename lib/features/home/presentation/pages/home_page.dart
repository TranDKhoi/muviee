part of home;

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => injector<HomeBloc>()..add(LoadAllMovieEvent()),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //big banner
              SizedBox(
                height: context.screenSize.height / 2,
                child: PageView(
                  controller: pageController,
                  children: [
                    BigBanner(),
                    BigBanner(),
                    BigBanner(),
                    BigBanner(),
                  ],
                ),
              ),
              //dot dot dot
              Padding(
                padding: const EdgeInsets.only(
                  left: 32,
                  top: 10,
                ),
                child: SmoothPageIndicator(
                  controller: pageController,
                  count: 4,
                  effect: const ExpandingDotsEffect(
                    activeDotColor: AppColor.primaryColor,
                    dotHeight: 10,
                    dotWidth: 10,
                  ),
                ),
              ),
              // list of movie
              BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) {
                  if (state is AllMovieLoadedState) {
                    return Column(
                      children: [
                        if (state.latestList.isNotEmpty)
                          LatestMovie(state.latestList),
                        if (state.popularList.isNotEmpty)
                          PopularMovie(state.popularList),
                        if (state.topRatedList.isNotEmpty)
                          TopRatedMovie(state.topRatedList),
                      ],
                    );
                  }
                  return const Center(child: CupertinoActivityIndicator());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
