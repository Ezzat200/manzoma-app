
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:manzoma/core/app_colors.dart';
import 'package:manzoma/core/widgets/custom_search.dart';

class CustomAppBarTwo extends StatelessWidget {
  const CustomAppBarTwo({
    super.key, required this.screenName,
  });
final String screenName;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20), // مسافة علوية بسيطة
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.mediumPurple, AppColors.purple],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBar(
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
                  screenName,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/search_two.svg',
                  ),
                ),
              ),
            ],
          ),
          CustomSearch(),
        ],
      ),
    );
  }
}
