
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:manzoma/core/app_colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key, required this.pageName, this.onPressed,
  });
final String pageName;
final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.mediumPurple, AppColors.purple],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight
        ),
      ),
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false, 
        title: Row(
          children: [
            Builder(
              builder: (context) => IconButton(
                icon: SvgPicture.asset(
              'assets/drwer.svg',
              color: AppColors.white,
            ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
            ),
            const SizedBox(width: 8),
             Text(
              pageName,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: onPressed,
              icon: SvgPicture.asset(
                'assets/serch.svg',
                color: AppColors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
