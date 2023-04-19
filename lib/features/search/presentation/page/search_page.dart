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
        create: (context) => _bloc,
        child: Scaffold(
          appBar: _searchAppBar(),
          body: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state is SearchMovieLoaded) {
                return Center();
              }
              if (state is SearchActorLoaded) {
                return Center();
              }
              if (state is SearchError) {
                return Text("Something went wrong");
              }
              return Text("Search something");
            },
          ),
        ),
      ),
    );
  }
}
