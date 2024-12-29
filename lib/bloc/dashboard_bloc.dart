import 'package:classwork5/bloc/area_of_circle_bloc.dart';
import 'package:classwork5/bloc/simple_interest_bloc.dart';
import 'package:classwork5/bloc/studentlist_bloc.dart';
import 'package:classwork5/view/area_circle_view.dart';
import 'package:classwork5/view/si_view.dart';
import 'package:classwork5/view/studentlst_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardBloc extends Cubit<void> {
  DashboardBloc(
    this._areaOfCircleBloc,
    this._simpleInterestBloc,
    this._studentListBloc,
  ) : super(null);

  final AreaOfCircleBloc _areaOfCircleBloc;
  final SimpleInterestBloc _simpleInterestBloc;
  final StudentlistBloc _studentListBloc;

  void openAreaOfCircleView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _areaOfCircleBloc,
          child: AreaCircleView(),
        ),
      ),
    );
  }

  void openSimpleInterestView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _simpleInterestBloc,
          child: SiView(),
        ),
      ),
    );
  }

  void openStudentListView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _studentListBloc,
          child: StudentListView(),
        ),
      ),
    );
  }
}
