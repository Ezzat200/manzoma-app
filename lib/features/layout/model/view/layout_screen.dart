// import 'dart:ui_web';

import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:manzoma/core/app_colors.dart';
import 'package:manzoma/features/layout/model/view_model/cubit/cubit.dart';
import 'package:manzoma/features/layout/model/view_model/cubit/states.dart';


class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<CurvedNavigationBarState> bottomNavigationKey = GlobalKey();
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    var cubit = ManzomaCubit.get(context);

    return BlocConsumer<ManzomaCubit, ManzomaStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            key: scaffoldKey,
            body: cubit.screens[cubit.currentIndex],
            bottomNavigationBar: CurvedNavigationBar(
              key: bottomNavigationKey,
             color: AppColors.purple,
              index: cubit
                  .currentIndex, // Use cubit.currentIndex for dynamic selection
              items: [
                CurvedNavigationBarItem(
                  labelStyle: TextStyle(
                    color: cubit.currentIndex == 0
                        ? AppColors.primaryColor
                        : AppColors.white                            , // Set unselected label color
                  ),
                  child: SvgPicture.asset(
                    'assets/home.svg',
                    color: cubit.currentIndex == 0
                        ? AppColors.primaryColor
                        : AppColors.white    , // Set unselected icon color
                  ),
                  label: 'Home',
                ),
                CurvedNavigationBarItem(
                  labelStyle: TextStyle(
                    color: cubit.currentIndex == 1
                        ? AppColors.primaryColor
                        : AppColors.white    , // Set unselected label color
                  ),
                  child: SvgPicture.asset(
                    'assets/projects.svg',
                    color: cubit.currentIndex == 1
                        ? AppColors.primaryColor
                        : AppColors.white     , // Set unselected icon color
                  ),
                  label: 'Projects',
                ),
                CurvedNavigationBarItem(
                  labelStyle: TextStyle(
                    color: cubit.currentIndex == 2
                        ? AppColors.primaryColor
                        : AppColors.white     , // Set unselected label color
                  ),
                  child: SvgPicture.asset(
                    'assets/taskes.svg',
                    color: cubit.currentIndex == 2
                        ? AppColors.primaryColor
                        : AppColors.white     , // Set unselected icon color
                  ),
                  label: 'Taskes',
                ),
                
                CurvedNavigationBarItem(
                  labelStyle: TextStyle(
                    color: cubit.currentIndex == 3
                        ? AppColors.primaryColor
                        : AppColors.white     , // Set unselected label color
                  ),
                  child: SvgPicture.asset(
                    'assets/login.svg',
                    color: cubit.currentIndex == 3
                        ? AppColors.primaryColor
                        : AppColors.white     , // Set unselected icon color
                  ),
                  label:'Profile',
                ),
              ],

             
              backgroundColor:AppColors.mediumPurple,
              animationCurve: Curves.easeInOut,
              animationDuration: const Duration(milliseconds: 500),
              onTap: (index) => cubit.changeBottomNavBar(index),
              letIndexChange: (index) => true,
            ),
          );
        });
  }
}