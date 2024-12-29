import 'package:classwork5/bloc/area_of_circle_bloc.dart';
import 'package:classwork5/bloc/dashboard_bloc.dart';
import 'package:classwork5/bloc/simple_interest_bloc.dart';
import 'package:classwork5/bloc/studentlist_bloc.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;

Future<void> initDependency() async {
  _initBloc();
}

void _initBloc() {
  serviceLocator.registerLazySingleton(() => AreaOfCircleBloc());
  serviceLocator.registerLazySingleton(() => SimpleInterestBloc());
  serviceLocator.registerLazySingleton(() => StudentlistBloc());
  serviceLocator.registerLazySingleton<DashboardBloc>(() => DashboardBloc(
        serviceLocator(),
        serviceLocator(),
        serviceLocator(),
      ));
}
