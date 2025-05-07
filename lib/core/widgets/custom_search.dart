
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:manzoma/core/app_colors.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: TextField(
      decoration: InputDecoration(
        hintText: "ابحث هنا...",
        hintStyle: TextStyle(fontSize: 14),
        prefixIcon: Container(
          padding: EdgeInsets.zero,
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.primaryColor
            ),
          child: SvgPicture.asset(
    'assets/serach_only.svg',
           
    fit: BoxFit.none,
          ),
        ),
        border: InputBorder.none,
        contentPadding: EdgeInsets.symmetric(horizontal: 10),
      ),
    ),
    
      ),
    );
  }
}
