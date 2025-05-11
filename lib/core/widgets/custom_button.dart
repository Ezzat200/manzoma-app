
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:manzoma/core/app_colors.dart';
import 'package:manzoma/core/app_size.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key, required this.is_show, required this.nameButton,
  });
  final  bool is_show;
final String nameButton;
  @override
  Widget build(BuildContext context) {
    return Container(height: 44,
    width: double.infinity,
    decoration: BoxDecoration(
      color: AppColors.primaryColor,
      borderRadius: BorderRadius.circular(AppSize.borderRadius),
      border: Border.all(color: AppColors.primaryColor),
    
    ),
    child:is_show? Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/signout.svg'),
        const SizedBox(width: 10,),
        Text(nameButton,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: AppColors.white),),
      ],
    ):Center(
      child:  Text(nameButton,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: AppColors.white),),
    )
    );
  }
}
