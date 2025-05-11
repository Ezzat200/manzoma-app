
import 'dart:developer';


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show BlocProvider, Cubit;
import 'package:manzoma/features/home/model/view/home_screen.dart';
import 'package:manzoma/features/layout/model/view_model/cubit/states.dart';
import 'package:manzoma/features/profile/model/view/profile_screen.dart';
import 'package:manzoma/features/projects/model/view/projects_screen.dart';
import 'package:manzoma/features/taskes/model/view/taskes_screen.dart';


class ManzomaCubit extends Cubit<ManzomaStates> {
  ManzomaCubit() : super(ManzomaInitialState());

  static ManzomaCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;



  String languageCode = 'ar';

  List<Widget> screens = [
    HomeScreen(),
   ProjectsScreen(),
   TaskesScreen(),
   ProfileScreen()
  ];

  void changeBottomNavBar(int index) {
    currentIndex = index;
    emit(SIGChangeBottomNavBarState());
  }
}