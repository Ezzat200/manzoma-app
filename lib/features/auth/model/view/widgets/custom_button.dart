import 'package:flutter/material.dart';
import 'package:manzoma/core/app_colors.dart';
import 'package:manzoma/core/app_size.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: AppSize.Padding),
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(  
          color: AppColors.mediumPurple,
          borderRadius: BorderRadius.circular(AppSize.borderRadius),
          ),
          child: Center(
            child: Text(
              'تسجيل الدخول',
              style: TextStyle(
                color: AppColors.white,
                fontSize: 18,
                fontWeight: FontWeight.w700
      
              )))
      ),
    );
  }
}