import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_example/login/bloc/login_bloc.dart';
import 'package:flutter_bloc_example/login/login_page.dart';

import 'counter/counter_bloc.dart';
import 'counter/counter_page/couter_page.dart';
import 'getxexamples/ex1/Screen1.dart';
import 'getxexamples/ex2/my_app_navigation.dart';
import 'getxexamples/ex3/rx_state_manager.dart';

void main() {
  // runApp(MyApp());
  // runApp(LoginApp());
  // runApp(Screen1());
  // runApp(MyAppNavigation());
  runApp(RxStateManager());
}

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(context) {
    return MultiBlocProvider(
        providers: [BlocProvider<LoginBloc>(create: (context) => LoginBloc())],
        child: MaterialApp(
          home: LoginPage(),
        ));
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return BlocProvider<CounterBloc>(
      create: (context) => CounterBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CounterPage(),
      ),
    );
  }
}
