import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:manzoma/core/app_colors.dart';
import 'package:manzoma/core/widgets/custom_appbar_two.dart';
import 'package:manzoma/core/widgets/custom_drwer.dart';
import 'package:manzoma/core/widgets/custom_info_page.dart';
import 'package:manzoma/features/projects/model/view/widgets/custom_card_projects.dart';
import 'package:manzoma/features/projects/model/view/widgets/custom_text_projects.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> images = List.generate(7, (_) => 'assets/projects_pic.png');

    return Scaffold(
       drawer: CustomDrwer(),
      appBar: PreferredSize(
  preferredSize: const Size.fromHeight(150), // زيادة الارتفاع
  child: CustomAppBarTwo(
    screenName: 'Projects',
  ),
),
body: SingleChildScrollView(
  child: Padding(
    padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 30),
    child: Column(
      children: [
        CustomInfoPage(desc: 'المشاريع'),
        SizedBox(height: 40,),
        CustomCardProjects(images: images),
        SizedBox(height: 40,),
        CustomCardProjects(images: images)

      ]),
  )
),
    );
  }
}
