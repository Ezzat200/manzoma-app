import 'package:flutter/material.dart';
import 'package:manzoma/core/app_colors.dart';
import 'package:manzoma/features/taskes/model/view/widgets/custom_text_taskes.dart';

class TaskesCard extends StatelessWidget {
   final List<String> images;

  const TaskesCard({super.key, required this.images});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            decoration: BoxDecoration(
              color:Color(0xffF5F5F52B).withOpacity(0.01),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey.shade300),
            
            ),
            width: 350,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               CustomTextTaskes(
                text_1: 'المشروع:',
                text_2: 'الهداف',
               ),
                const SizedBox(height: 10),
                 CustomTextTaskes(
                text_1: 'الحالة:',
                text_2: 'قيد التنفيذ',
               ),
                const SizedBox(height: 10),
                CustomTextTaskes(
                text_1: 'تاريخ الانتهاء:',
                text_2: '23-11-2025',
               ),
                const SizedBox(height: 10),
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
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'تصميم الرئيسية',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  
  }

