import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:manzoma/core/app_colors.dart';
import 'package:manzoma/core/app_size.dart';


import 'package:manzoma/core/widgets/custom_appbar_two.dart';
import 'package:manzoma/core/widgets/custom_button.dart';
import 'package:manzoma/core/widgets/custom_drwer.dart';
import 'package:manzoma/core/widgets/custom_info_page.dart';
import 'package:manzoma/features/Reviews/model/view/widgets/reviews_card.dart';
import 'package:manzoma/features/auth/model/view/widgets/custom_button.dart';
import 'package:manzoma/features/profile/model/view/edit_profile_screen.dart';
import 'package:manzoma/features/profile/model/view/widgets/card_imfo_profile.dart';
import 'package:manzoma/features/profile/model/view/widgets/text_field_password_profile.dart';



class SecurityScreen extends StatelessWidget {
  const SecurityScreen({super.key});

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
        CustomInfoPage(desc: 'الامان'),
        const SizedBox(height: 15,),
     TextFieldPasswordProfile(
      nameField: 'كلمة المرور',
     ),
     SizedBox(height: 10,),
      TextFieldPasswordProfile(
      nameField: 'تأكيد كلمة المرور',
     )
    ,
    SizedBox(height: 30,),
    MainButton(is_show: false, nameButton: 'حفظ التعديلات')
      ]),
  )
),
    );
  }
}
