part of search;

@immutable
abstract class SearchEvent extends Equatable {}

class ChangePageEvent extends SearchEvent {
  final int index;

  ChangePageEvent(this.index);

  @override
  List<Object?> get props => [index];
}

class OnSearchEvent extends SearchEvent {
  final String searchString;
  final Map<String, dynamic>? filter;

  OnSearchEvent(this.searchString, [this.filter]);

  @override
  List<Object?> get props => [searchString, filter];
}

class GetCountryEvent extends SearchEvent {
  GetCountryEvent();

  @override
  List<Object?> get props => [];
}
