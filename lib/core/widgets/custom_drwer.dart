
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:manzoma/core/app_colors.dart';
import 'package:manzoma/core/widgets/custom_drwer_screen.dart';
import 'package:manzoma/features/Reviews/model/view/reviews_screen.dart';
import 'package:manzoma/features/Statistics/model/view/Statistics_screen.dart';
import 'package:manzoma/features/blogs/model/view/blogs_screen.dart';
import 'package:manzoma/features/home/model/view/home_screen.dart';
import 'package:manzoma/features/profile/model/view/profile_screen.dart';
import 'package:manzoma/features/projects/model/view/favorite_project_screen.dart';
import 'package:manzoma/features/projects/model/view/projects_screen.dart';
import 'package:manzoma/features/taskes/model/view/goalscorers_tasks.dart';
import 'package:manzoma/features/taskes/model/view/taskes_screen.dart';

class CustomDrwer extends StatelessWidget {
  const CustomDrwer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(height: 50,),
         Image.asset('assets/manzoma1 copy 1.png'),
         Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [AppColors.purple,AppColors.mediumPurple],begin: Alignment.centerRight)
          ),
          height: 80,
          width: double.infinity,
           child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Image.asset('assets/profile.png',color: AppColors.white,),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('محمد احمد محمود',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: AppColors.white),
                  ),
                  Text('Mohamed@Gmail.com',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Color(0xffD9D9D9)))
                ],
              ),
             
            ],
           ),
         ),
              SizedBox(height: 30,),
     Padding(
       padding: const EdgeInsets.symmetric(horizontal: 34),
       child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) {
                          return const HomeScreen();
                        },));
                      },
                      child: CustomDrwerScreen(
                        svgImage: 'assets/home.svg',
                        screenName: 'Home',
                      ),
                    ),
                    SizedBox(height: 33,),
                    InkWell(
                      onTap: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) {
                          return const StatisticsScreen();
                        },));
                      },
                      child: CustomDrwerScreen(
                        svgImage: 'assets/Statistics.svg',
                        screenName: 'Statistics',
                      ),
                    ),
                    SizedBox(height: 33,),
                    InkWell(
                       onTap: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) {
                          return const ProjectsScreen();
                        },));
                      },
                      child: CustomDrwerScreen(
                        svgImage: 'assets/projects.svg',
                        screenName: 'Projects',
                      ),
                    ),
                    SizedBox(height: 33,),
                    InkWell(
                       onTap: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) {
                          return const FavoriteProjectScreen();
                        },));
                      },
                      child: CustomDrwerScreen(
                        svgImage: 'assets/Favorite Projects.svg',
                        screenName: 'Favorite Projects',
                      ),
                    ),
                    SizedBox(height: 33,),
                    InkWell(
                       onTap: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) {
                          return const TaskesScreen();
                        },));
                      },
                      child: CustomDrwerScreen(
                        svgImage: 'assets/taskes.svg',
                        screenName: 'Tasks',
                      ),
                    ),
                    SizedBox(height: 33,),
                    InkWell(
                       onTap: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) {
                          return const ReviewsScreen();
                        },));
                      },
                      child: CustomDrwerScreen(
                        svgImage: 'assets/Reviews.svg',
                        screenName: 'Reviews ',
                      ),
                    ),
                    SizedBox(height: 33,),
                    InkWell(
                       onTap: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) {
                          return const BlogsScreen();
                        },));
                      },
                      child: CustomDrwerScreen(
                        svgImage: 'assets/Blogs.svg',
                        screenName: 'Blogs',
                      ),
                    ),
                    SizedBox(height: 33,),
                    InkWell(
                      onTap: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) {
                          return const ProfileScreen();
                        },));
                      },
                      child: CustomDrwerScreen(
                        svgImage: 'assets/login.svg',
                        screenName: 'Profile ',
                      ),
                    ),
                    SizedBox(height: 33,),
                  ],
                ),
     ),
     Container(
      height: 80,
      width: double.infinity,
      color: AppColors.errorColor,
      child: Center(
        child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SvgPicture.asset('assets/logout.svg',color: AppColors.white,),
      SizedBox(width: 10,),
                          Text('Logout',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: AppColors.white)),
     
    ],
        )
      ),
     )
        ],
      ),
    );
  }
}
