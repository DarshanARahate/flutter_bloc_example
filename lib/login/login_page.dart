import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_example/login/bloc/login_bloc.dart';
import 'package:flutter_bloc_example/login/bloc/login_event.dart';
import 'package:flutter_bloc_example/login/bloc/login_state.dart';
import 'package:flutter_bloc_example/login/model/request/login_request.dart';

class LoginPage extends StatelessWidget {
  TextEditingController usernameTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login page'),
      ),
      body: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          if (state is LoginInitialState) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextField(
                    controller: usernameTextEditingController,
                    decoration: InputDecoration(hintText: "Username"),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: passwordTextEditingController,
                    decoration: InputDecoration(hintText: "Password"),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: () {
                        var bloc = BlocProvider.of<LoginBloc>(context);
                        var request = LoginRequestEvent(
                            loginRequest: LoginRequest(
                                username: usernameTextEditingController.text,
                                password: passwordTextEditingController.text));

                        bloc.add(request);
                      },
                      child: Text("Login"))
                ],
              ),
            );
          } else if (state is LoginLoadingState) {
            return CircularProgressIndicator();
          } else if (state is LoginLoadedState) {
            return Center(child: Text(state.loginResponse?.email ?? "NA"));
          } else if (state is LoginErrorState) {
            return Center(child: Text(state.errorMsg!));
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
