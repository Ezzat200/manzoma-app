import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:manzoma/core/widgets/custom_appbar_two.dart';
import 'package:manzoma/core/widgets/custom_drwer.dart';
import 'package:manzoma/core/widgets/custom_info_page.dart';
import 'package:manzoma/features/projects/model/view/widgets/custom_card_favorite_projects_card.dart';
import 'package:manzoma/features/taskes/model/view/widgets/taskes_card.dart';


class GoalscorersTasks extends StatelessWidget {
  const GoalscorersTasks({super.key});

  @override
  Widget build(BuildContext context) {
      final List<String> images = List.generate(7, (_) => 'assets/projects_pic.png');

    return Scaffold(
       drawer: CustomDrwer(),
      appBar: PreferredSize(
  preferredSize: const Size.fromHeight(150), 
  child: CustomAppBarTwo(
    screenName: ' Taskes',
  ),
),
body: SingleChildScrollView(
  child: Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomInfoPage(desc: ' مهام الهداف'),
            SvgPicture.asset('assets/goals_taskes.svg')
          ],
        ),
      ),
      const SizedBox(height: 15),
      Container(
        height: 38,
        width: double.infinity,
        color: Color(0xffF5F5F5),
        child: Center(
          child: Text('مهام تحت التنفيذ',style: TextStyle(color: Color(0xff414042),fontSize: 16,fontWeight: FontWeight.w500),),
        ),
      ),
      SizedBox(height: 40,),
   Padding(
     padding: const EdgeInsets.symmetric(horizontal: 30),
     child: Column(
      children: [
          TaskesCard(images:  images,),
       SizedBox(height: 20,),
       TaskesCard(images:  images,)
      ],
     ),
   )
  ,
  SizedBox(height: 20,),
   Container(
        height: 38,
        width: double.infinity,
        color: Color(0xffF5F5F5),
        child: Center(
          child: Text('مهام انتهت',style: TextStyle(color: Color(0xff414042),fontSize: 16,fontWeight: FontWeight.w500),),
        ),
      ),
      SizedBox(height: 40,),
   Padding(
     padding: const EdgeInsets.symmetric(horizontal: 30),
     child: Column(
      children: [
          TaskesCard(images:  images,),
       SizedBox(height: 20,),
       
      ],
     ),
   )
    ])
),
    );
  }
}
