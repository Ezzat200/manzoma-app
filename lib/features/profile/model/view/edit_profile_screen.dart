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

import 'package:manzoma/features/profile/model/view/widgets/card_imfo_profile.dart';
import 'package:manzoma/features/profile/model/view/widgets/custom_date_field.dart';
import 'package:manzoma/features/profile/model/view/widgets/custom_text_field_profile.dart';
import 'package:manzoma/features/profile/model/view/widgets/text_field_phone.dart';



class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

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
        CustomInfoPage(desc: '  المعلومات الشخصية'),
        const SizedBox(height: 15,),
       
     Stack(clipBehavior: Clip.none,
      children:[ Image.asset('assets/profile.png',),
     Positioned(
      bottom: -5,
      right: -5,
      child: SvgPicture.asset('assets/camera.svg'))
     ]),
        const SizedBox(height: 5,),
Text(
  'تعديل الصورة الشخصية',
  style: TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: AppColors.primaryColor,
    decoration: TextDecoration.underline,
    
    decorationColor: AppColors.primaryColor, // لون الخط تحت النص
    decorationStyle: TextDecorationStyle.solid,
    decorationThickness: 1,
    height: 2
  ),
  
),
const SizedBox(height: 10,),
CustomTextFieldProfile(
  nameField: 'اسم المستخدم',
  username: 'Mohamed Ahmed',
)
,
SizedBox(height: 10,),
CustomTextFieldProfile(
  nameField: 'البريد الالكتروني',
  username: 'mohamedahmed@gmail.com',
  ),
       
SizedBox(height: 10,),
     CustomPhoneField(),
    SizedBox(height: 10,),
     CustomDateField(),
          SizedBox(height: 35,),
          MainButton(is_show: false, nameButton: 'حفظ التعديلات')
      ]
      ),
  )
),
    );
  }
}
