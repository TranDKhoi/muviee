part of forgot_pass;

@immutable
abstract class ForgotPassState extends Equatable {}

class ForgotPassInitial extends ForgotPassState {
  @override
  List<Object?> get props => [];
}

class ConfirmSuccessState extends ForgotPassState {
  @override
  List<Object?> get props => [];
}
