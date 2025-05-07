import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:manzoma/core/app_colors.dart';
import 'package:manzoma/core/app_size.dart';
import 'package:manzoma/core/widgets/custom_appbar.dart';
import 'package:manzoma/core/widgets/custom_appbar_two.dart';
import 'package:manzoma/core/widgets/custom_drwer.dart';
import 'package:manzoma/core/widgets/custom_info_page.dart';
import 'package:manzoma/core/widgets/custom_search.dart';
import 'package:manzoma/features/Statistics/model/view/widgets/custom_statistics.dart';

class StatisticsSearchScreen extends StatelessWidget {
  const StatisticsSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
   
    final statistics = [
      { "bottom": "المشاريع", "number": 94},
      { "bottom": "المشاريع المفضلة", "number": 32},
      { "bottom": "مشاريع تحت التنفيذ", "number": 15},
      { "bottom": "مشاريع سيتم تنفيذها", "number": 4},
      { "bottom": "المشارييع المنتهية", "number": 76},
      { "bottom": " عددالمهـام", "number": 4},
      { "bottom": "مشاريع سيتم تنفيذها", "number": 88},
      { "bottom": 'مهامتحت التنفيذ', "number": 21},
      { "bottom": 'مهامسيتم تنفيذها', "number": 9},
      { "bottom": "المهامالمنتهية", "number": 63},
    ];

    return Scaffold(
      drawer: CustomDrwer(),
      appBar: PreferredSize(
  preferredSize: const Size.fromHeight(150), // زيادة الارتفاع
  child: CustomAppBarTwo(
    screenName: 'Statistics',
  ),
),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSize.Padding, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomInfoPage(desc: 'الاحصائيات'),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                itemCount: statistics.length,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 120, // العرض الأقصى لكل عنصر (أقرب لـ 110)
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  mainAxisExtent: 150, // ارتفاع العنصر
                ),
                itemBuilder: (context, index) {
                  final item = statistics[index];
                  return CustomStatisticCard(
                   
                    bottomText: item["bottom"] as String,
                    number: item["number"] as int,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
