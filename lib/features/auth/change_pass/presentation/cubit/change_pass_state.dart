part of change_pass;

@immutable
abstract class ChangePassState extends Equatable {}

class ChangePassInitial extends ChangePassState {
  @override
  List<Object?> get props => [];
}

class ChangePassSuccessState extends ChangePassState {
  @override
  List<Object?> get props => [];
}
