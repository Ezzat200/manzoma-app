
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:manzoma/core/app_colors.dart';

class CustomDrwerScreen extends StatelessWidget {
  const CustomDrwerScreen({
    super.key, required this.svgImage, required this. screenName
,
  });
final String svgImage;
final String screenName;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(svgImage,color: AppColors.textDrwer,),
        SizedBox(width: 10,),
                            Text(screenName,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: AppColors.textDrwer)),
       
      ],
    );
  }
}
