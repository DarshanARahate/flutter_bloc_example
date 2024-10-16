import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_example/login/bloc/login_event.dart';
import 'package:flutter_bloc_example/login/bloc/login_state.dart';
import 'package:flutter_bloc_example/login/model/response/login_response.dart';
import 'package:flutter_bloc_example/login/repo/login_repo.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitialState()) {
    on<LoginRequestEvent>((event, emit) async {
      emit(LoginLoadingState());

      try {
        LoginResponse loginResponse = await LoginRepo().login(
            event.loginRequest?.username ?? "",
            event.loginRequest?.password ?? "");

        emit(LoginLoadedState(loginResponse: loginResponse));
      } catch (e) {
        emit(LoginErrorState(errorMsg: e.toString()));
      }
    });
  }
}
