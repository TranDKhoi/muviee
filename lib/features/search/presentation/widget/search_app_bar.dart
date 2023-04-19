part of search;

extension SearchAppBar on SearchPageState {
  AppBar _searchAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      title: TextField(
        controller: searchController,
        textInputAction: TextInputAction.search,
        onSubmitted: (val) {
          _bloc.add(OnSearchEvent(val.trim()));
        },
        style: const TextStyle(
          height: 2.0,
          fontSize: AppFontSize.normalFontSize,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: const Icon(Icons.search),
          hintText: R.search.translate,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.filter_list),
        ),
        const SizedBox(width: AppDimens.SCREEN_PADDING / 2),
      ],
      bottom: TabBar(
        controller: _tabController,
        indicatorSize: TabBarIndicatorSize.tab,
        tabs: [
          Tab(
            text: R.movie.translate,
          ),
          Tab(
            text: R.actor.translate,
          ),
        ],
      ),
    );
  }
}
