part of search;

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => SearchPageState();
}

class SearchPageState extends State<SearchPage>
    with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin<SearchPage> {
  @override
  bool get wantKeepAlive => true;

  late TabController _tabController;

  final SearchBloc _bloc = injector<SearchBloc>();

  final TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      _bloc.add(ChangePageEvent(_tabController.index));
    });
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return DefaultTabController(
      length: 2,
      child: BlocProvider(
        create: (context) => _bloc..add(GetCountryEvent()),
        child: Scaffold(
          appBar: _searchAppBar(),
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(AppDimens.SCREEN_PADDING),
              child: BlocBuilder<SearchBloc, SearchState>(
                builder: (context, state) {
                  if (state is SearchMovieLoaded) {
                    if (_bloc.moviesSearch != null) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children:
                            _bloc.moviesSearch!.results.map((e) => HorizontalMovieItem(e)).toList(),
                      );
                    }
                    return centerText(R.searchSomething.translate);
                  }
                  if (state is SearchActorLoaded) {
                    if (_bloc.actorsSearch != null) {
                      return Wrap(
                        spacing: AppDimens.SPACING,
                        runSpacing: AppDimens.SPACING,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: _bloc.actorsSearch!.results.map((e) => ActorItem(e)).toList(),
                      );
                    }
                    return centerText(R.searchSomething.translate);
                  }
                  if (state is SearchError) {
                    return centerText(R.somethingWentWrong.translate);
                  }
                  return centerText(R.searchSomething.translate);
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget centerText(String mess) => Center(child: Text(mess));
}
