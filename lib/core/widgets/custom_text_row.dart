
import 'package:flutter/material.dart';
import 'package:manzoma/core/app_colors.dart';

class CustomTextRow extends StatelessWidget {
  const CustomTextRow({
    super.key, required this.text_1, required this.text_2,
  });
final String text_1;
final String text_2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text_1,style: TextStyle(color: Color(0xff414042),fontSize: 12,fontWeight: FontWeight.w400)),
        Text(text_2,style: TextStyle(color: AppColors.mediumPurple,fontSize: 12,fontWeight: FontWeight.w400)),
                
                
      ],
    );
  }
}