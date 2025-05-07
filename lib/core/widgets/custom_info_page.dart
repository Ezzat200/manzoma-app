
import 'package:flutter/material.dart';
import 'package:manzoma/core/app_colors.dart';

class CustomInfoPage extends StatelessWidget {
  const CustomInfoPage({
    super.key, required this.desc,
  });

final String desc;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [Container(
        height: 20,
        width: 2,
        color: AppColors.primaryColor,
    
      ),
      SizedBox(width: 5,)
    ,
      Text(desc,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: AppColors.mainText),)],
      
    );
  }
}
