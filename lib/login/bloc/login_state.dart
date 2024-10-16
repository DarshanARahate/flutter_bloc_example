import 'package:equatable/equatable.dart';
import 'package:flutter_bloc_example/login/model/response/login_response.dart';

abstract class LoginState extends Equatable {}

class LoginInitialState extends LoginState {
  @override
  List<Object?> get props => [];
}

class LoginLoadingState extends LoginState {
  @override
  List<Object?> get props => [];
}

class LoginLoadedState extends LoginState {
  LoginResponse? loginResponse;

  LoginLoadedState({this.loginResponse});

  @override
  List<Object?> get props => [loginResponse];
}

class LoginErrorState extends LoginState {
  String? errorMsg;

  LoginErrorState({this.errorMsg});

  @override
  List<Object?> get props => [errorMsg];
}
