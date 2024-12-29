import 'package:classwork5/bloc/dashboard_bloc.dart';
import 'package:classwork5/service_locator/init_dependancy.dart';
import 'package:classwork5/view/dashboard_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter BLoC',
      home: BlocProvider.value(
        value: serviceLocator<DashboardBloc>(),
        child: DashboardView(),
      ),
    );
  }
}
