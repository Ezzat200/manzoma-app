import 'package:flutter/material.dart';

import 'package:manzoma/core/widgets/custom_appbar_two.dart';
import 'package:manzoma/core/widgets/custom_drwer.dart';
import 'package:manzoma/core/widgets/custom_info_page.dart';
import 'package:manzoma/features/projects/model/view/widgets/custom_card_favorite_projects_card.dart';


class FavoriteProjectScreen extends StatelessWidget {
  const FavoriteProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> images = List.generate(7, (_) => 'assets/projects_pic.png');

    return Scaffold(
       drawer: CustomDrwer(),
      appBar: PreferredSize(
  preferredSize: const Size.fromHeight(150), // زيادة الارتفاع
  child: CustomAppBarTwo(
    screenName: ' Projects',
  ),
),
body: SingleChildScrollView(
  child: Padding(
    padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 30),
    child: Column(
      children: [
        CustomInfoPage(desc: 'المشاريع المفضله'),
        SizedBox(height: 40,),
        CustomCardFavoriteProjects(images: images),
        SizedBox(height: 40,),
        CustomCardFavoriteProjects(images: images)

      ]),
  )
),
    );
  }
}
