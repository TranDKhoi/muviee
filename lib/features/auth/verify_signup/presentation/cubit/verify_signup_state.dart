part of verify_signup;

@immutable
abstract class VerifySignupState extends Equatable {}

class InitState extends VerifySignupState {
  @override
  List<Object?> get props => [];
}

class VerifySuccessState extends VerifySignupState {
  @override
  List<Object?> get props => [];
}
