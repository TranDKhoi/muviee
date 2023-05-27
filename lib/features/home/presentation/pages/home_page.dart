part of home;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with AutomaticKeepAliveClientMixin<HomePage> {
  final pageController = PageController();

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
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
                child: BlocBuilder<HomeBloc, HomeState>(
                  builder: (context, state) {
                    if (state is AllMovieLoadedState) {
                      return PageView(
                        controller: pageController,
                        children: state.recommendList.map((e) => BigBanner(e)).toList(),
                      );
                    }
                    return const Center();
                  },
                ),
              ),
              //dot dot dot
              Padding(
                padding: const EdgeInsets.only(
                  left: 32,
                  top: 10,
                ),
                child: BlocBuilder<HomeBloc, HomeState>(
                  builder: (context, state) {
                    if (state is AllMovieLoadedState) {
                      return SmoothPageIndicator(
                        controller: pageController,
                        count: state.recommendList.length,
                        effect: const ExpandingDotsEffect(
                          activeDotColor: AppColor.primaryColor,
                          dotHeight: 10,
                          dotWidth: 10,
                        ),
                      );
                    }
                    return const Center();
                  },
                ),
              ),
              // list of movie
              BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) {
                  if (state is AllMovieLoadedState) {
                    return Column(
                      children: [
                        if (state.latestList.isNotEmpty) LatestMovie(state.latestList),
                        if (state.popularList.isNotEmpty) PopularMovie(state.popularList),
                        if (state.topRatedList.isNotEmpty) TopRatedMovie(state.topRatedList),
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
