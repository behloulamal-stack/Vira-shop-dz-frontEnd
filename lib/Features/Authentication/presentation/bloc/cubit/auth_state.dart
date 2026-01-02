part of 'auth_cubit.dart';

sealed class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

final class UserInitial extends AuthState {}

final class SignInSuccess extends AuthState {}

final class SignInLoading extends AuthState {}

final class SignInFailure extends AuthState {
  final String errMessage;

  const SignInFailure({required this.errMessage});
  @override
  List<Object> get props => [errMessage];
}

final class RegisterSuccess extends AuthState {
 
}

final class RegisterLoading extends AuthState {}

final class RegisterFailure extends AuthState {
  final String errMessage;

  const RegisterFailure({required this.errMessage});
  @override
  List<Object> get props => [errMessage];
}
