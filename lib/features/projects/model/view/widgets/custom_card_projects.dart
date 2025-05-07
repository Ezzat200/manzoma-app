
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:manzoma/core/app_colors.dart';
import 'package:manzoma/features/projects/model/view/widgets/custom_text_projects.dart';

class CustomCardProjects extends StatelessWidget {
  const CustomCardProjects({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children:[ Container(
        height: 240,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xffE6E6E6)),
          borderRadius: BorderRadius.circular(8)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 18),
          child: Column(
            children: [
              CustomTextProjects(
                text_1: 'عدد المهام:',
                text_2: '3',
              )
              ,SizedBox(height: 5,),
              CustomTextProjects(
                text_1: 'عدد المهام:',
                text_2: '3',
              )
              ,SizedBox(height: 5,),
              CustomTextProjects(
                text_1: 'الحالة:',
                text_2: 'مفتوح',
              )
              ,SizedBox(height: 5,),
              CustomTextProjects(
                text_1: ' الاولوية:',
                text_2: 'مستعجل',
              )
              ,SizedBox(height: 5,),
               CustomTextProjects(
                text_1: ' تاريخ البدء:',
                text_2: '13-10-2025',
              )
              ,SizedBox(height: 5,),
               CustomTextProjects(
                text_1: ' تاريخ الانتهاء:',
                text_2: '23-11-2025',
              )
              ,SizedBox(height: 5,),
             Row(
        children: [
          const Text(
            'المستخدمين:',
            style: TextStyle(
      color: Color(0xff414042),
      fontSize: 12,
      fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(width: 8),
          ...List.generate(
            images.length > 4 ? 4 : images.length,
            (index) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2.0),
      child: CircleAvatar(
        radius: 14,
        backgroundImage: AssetImage(images[index]),
      ),
            ),
          ),
          if (images.length > 4)
            Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2.0),
      child: CircleAvatar(
        radius: 14,
        backgroundColor: AppColors.primaryColor,
        child: Text(
          '+${images.length - 4}',
          style: const TextStyle(fontSize: 10, color: AppColors.white),
        ),
      ),
            ),
        ],
      ),
      
            ],
          ),
        ),
      ),
     Positioned(
      top: -15,
      child: SizedBox(
        width: MediaQuery.of(context).size.width - 60, // 60 بسبب Padding(horizontal: 30)
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
    Container(
      width: 180,
      height: 30,
      decoration: const BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Center(
        child:      Text('الهداف',style: TextStyle(color: AppColors.white,fontSize: 14,fontWeight: FontWeight.w700)),
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(right: 15),
      child: SvgPicture.asset('assets/projects_star.svg'),
    ),
          ],
        ),
      ),
    ),
    
          ]);
  }
}
