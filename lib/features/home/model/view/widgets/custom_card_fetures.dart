
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:manzoma/core/app_colors.dart';
import 'package:manzoma/core/app_size.dart';

class CustomCardFetures extends StatelessWidget {
  const CustomCardFetures({
    super.key, required this.title, required this.desc, required this.svgIcon,
  });
final String title;
final String desc;
final String svgIcon;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children:[ Container(
        height: 90,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSize.borderRadius),
          border: Border.all(color: Color(0xffD9D9D9)),
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 35),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 14,
      color: AppColors.mediumPurple,
                      ),
                    ),
                    Text(
                      desc,
                      style: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: Color(0xff7A7A7A),
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      
      
        ),
       Positioned(
      top: 20,
      left: -20,
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: Color(0xffF5F5F5),
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: Color(0xffE6E6E6)),
        ),
        child: Center(
          child: SvgPicture.asset(
            svgIcon,
            width: 24, 
            height: 24,
            fit: BoxFit.none, 
          ),
        ),
      ),
    )
    
    ]);
  }
}
