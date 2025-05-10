import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:manzoma/core/widgets/custom_text_row.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffE6E6E6)),
        borderRadius: BorderRadius.circular(8),

      ),
      child: Column(
        children: [
           SizedBox(height: 20,),
   Container(
        height: 28,
        width: double.infinity,
        color: Color(0xffF5F5F5),
        child: Center(
          child: Text(' تصميم الهداف',style: TextStyle(color: Color(0xff414042),fontSize: 16,fontWeight: FontWeight.w500),),
        ),
      ),
           SizedBox(height: 10,),
SvgPicture.asset('assets/Reviews_star.svg'),
           SizedBox(height: 10,),
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 20),
           child: Column(
            children: [
                CustomTextRow(
                text_1: 'اسم المستخدم:',
                text_2: 'احمد محمود',
               ),
                SizedBox(height: 10,),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               CustomTextRow(
                    text_1: ' التاريخ:',
                    text_2: ' 23-11-2025',
                   ),
                    CustomTextRow(
                    text_1: ' التعليق:',
                    text_2: ' جيد',
                   ),
             ],
           ),
            ],
           ),
         )

        ],
      ),
    );
  }
}