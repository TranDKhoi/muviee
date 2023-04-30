part of signup;

@immutable
abstract class SignupEvent extends Equatable {}

class ConfirmButtonClicked extends SignupEvent {
  final String email;
  final String password;
  final String rePass;
  final String userName;

  ConfirmButtonClicked({
    required this.email,
    required this.password,
    required this.rePass,
    required this.userName,
  });

  @override
  List<Object> get props => [
        email,
        password,
        rePass,
        userName,
      ];
}
