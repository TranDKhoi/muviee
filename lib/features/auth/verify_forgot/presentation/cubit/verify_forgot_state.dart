part of verify_forgot;

@immutable
abstract class VerifyForgotState extends Equatable {}

class VerifyForgotInitial extends VerifyForgotState {
  @override
  List<Object?> get props => [];
}

class VerifyForgotSuccess extends VerifyForgotState {
  final String tempToken;

  VerifyForgotSuccess(this.tempToken);

  @override
  List<Object?> get props => [tempToken];
}
