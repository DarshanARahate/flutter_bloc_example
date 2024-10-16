import 'package:equatable/equatable.dart';

import '../model/request/login_request.dart';

abstract class LoginEvent extends Equatable {}

class LoginRequestEvent extends LoginEvent {
  LoginRequest? loginRequest;

  LoginRequestEvent({this.loginRequest});

  @override
  List<Object?> get props => [loginRequest];
}
