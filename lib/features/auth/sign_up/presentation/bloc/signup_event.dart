part of signup;

@immutable
abstract class SignupEvent extends Equatable {}

class ConfirmButtonClicked extends SignupEvent {
  final String email;
  final String password;
  final String rePass;

  ConfirmButtonClicked(
      {required this.email, required this.password, required this.rePass});

  @override
  List<Object> get props => [email, password, rePass];
}
