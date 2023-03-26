part of login;

abstract class LoginState extends Equatable {}

class InitState extends LoginState {
  @override
  List<Object?> get props => [];
}

class LoginSuccessState extends LoginState {
  @override
  List<Object?> get props => [];
}
