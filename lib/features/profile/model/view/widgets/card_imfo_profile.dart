
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:manzoma/core/app_colors.dart';
import 'package:manzoma/core/app_size.dart';

class CardInfoProfile extends StatelessWidget {
  const CardInfoProfile({
    super.key, required this.image, required this.name, required this.details, this.onTap,
  });
final String image ;
final String name ;
final String details ;
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap,
      child: Container(
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.backgroundCard.withOpacity(0.1),
          border: Border.all(color: AppColors.border),
          borderRadius: BorderRadius.circular(AppSize.borderRadius),
          
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset(image),
                  const SizedBox(width: 10,),
                 
                  Column(
                    children: [
        Text(name,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: AppColors.mainText),),
          Text(details,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: AppColors.textDrwer),),
          
                    ],
                    
                  ),
                ],
              ),
                  SvgPicture.asset('assets/arrwo.svg',)
            ],
          ),
        ),
      ),
    );
  }
}
