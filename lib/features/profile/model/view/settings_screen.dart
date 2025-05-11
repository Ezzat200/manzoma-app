import 'package:flutter/material.dart';



import 'package:manzoma/core/widgets/custom_appbar_two.dart';
import 'package:manzoma/core/widgets/custom_button.dart';
import 'package:manzoma/core/widgets/custom_drwer.dart';
import 'package:manzoma/core/widgets/custom_info_page.dart';

import 'package:manzoma/features/profile/model/view/widgets/text_field_password_profile.dart';
import 'package:manzoma/features/profile/model/view/widgets/text_field_setting.dart';



class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
  

    return Scaffold(
       drawer: CustomDrwer(),
      appBar: PreferredSize(
  preferredSize: const Size.fromHeight(150), 
  child: CustomAppBarTwo(
    screenName: ' Profile',
  ),
),
body: SingleChildScrollView(
  child: Padding(
    padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 30),
    child: Column(
      children: [
        CustomInfoPage(desc: 'اللغة'),
        const SizedBox(height: 15,),
        LanguageDropdown(),
        const SizedBox(height: 40,),
        MainButton(is_show: false, nameButton: 'حفظ التعديلات')
    
      ]),
  )
),
    );
  }
}
