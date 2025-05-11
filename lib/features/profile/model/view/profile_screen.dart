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
import 'package:manzoma/features/profile/model/view/security_screen.dart';
import 'package:manzoma/features/profile/model/view/settings_screen.dart';
import 'package:manzoma/features/profile/model/view/widgets/card_imfo_profile.dart';



class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
        CustomInfoPage(desc: '  الصفحة الشخصية'),
        const SizedBox(height: 15,),
       
     Image.asset('assets/profile.png'),
        const SizedBox(height: 5,),
        Text('محمد احمد محمود',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: AppColors.mainText),),
        Text('Mohamed@Gmail.com',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: AppColors.textDrwer),),
        const SizedBox(height: 24,),
    
    CardInfoProfile(
      onTap: () {
       
                          Navigator.push(context,MaterialPageRoute(builder: (context) {
                          return const EditProfileScreen();
                        },));
                      
      },
      image: 'assets/profile_data.svg',
      name: 'المعلومات الشخصية',
      details: 'اعداد تفاصيلك الشخصية',
    )
    ,
    SizedBox(height: 10,)
    ,
    CardInfoProfile(
      onTap: () {
         Navigator.push(context,MaterialPageRoute(builder: (context) {
                          return const SecurityScreen();
                        },));
      },
      image: 'assets/profile_Security.svg',
      name: ' الامان',
      details: 'اعداد تفاصيل الامان لحسابك',
    )
    ,
    SizedBox(height: 10,),
    CardInfoProfile(
      onTap: () {
        Navigator.push(context,MaterialPageRoute(builder: (context) {
                          return const SettingsScreen();
                        },));
      },
      image: 'assets/language.svg',
      name: 'اللغة',
      details: 'العربية',
    )
    ,
    SizedBox(height: 15,),

  MainButton(is_show: true,nameButton: 'تسجيل الخروج',)
      
    
      ]),
  )
),
    );
  }
}
