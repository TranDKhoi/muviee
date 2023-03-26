part of bio;

@immutable
abstract class BioState extends Equatable {}

class BioInitial extends BioState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class SaveBioSuccess extends BioState {
  @override
  List<Object?> get props => [];
}
