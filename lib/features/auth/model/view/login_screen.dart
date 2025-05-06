import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:manzoma/core/app_colors.dart';
import 'package:manzoma/core/app_size.dart';
import 'package:manzoma/features/auth/model/view/widgets/custom_button.dart';
import 'package:manzoma/features/auth/model/view/widgets/custom_text_field.dart';
import 'package:manzoma/features/auth/model/view/widgets/custom_text_field_password.dart';
import 'package:manzoma/features/auth/model/view/widgets/remember_me.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
       SafeArea(
         child: SingleChildScrollView(
          child: Column(
            children: [
              
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  
                  gradient: LinearGradient(colors: [AppColors.purple,AppColors.mediumPurple]),
                  image: DecorationImage(
                    opacity: 0.1,
                    fit: BoxFit.cover,
                    image: AssetImage( 'assets/appbar_login.jpg',),)
                ),
                
              ),
              SizedBox(height: 20,),
              Image.asset('assets/manzoma1 copy 1.png'),
              SizedBox(height: 40,),
              Text('مرحبا بك',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: AppColors.text),),
              Text(' تسجيل الدخول',style: TextStyle(fontSize: 32,fontWeight: FontWeight.w700,color: AppColors.mediumPurple),),
              SizedBox(height: 20,),
             customTextField(
              nameField: 'البريد الالكتروني',
             )
             ,
             SizedBox(height: 10,),
            CustomTextFieldPassword(nameField: 'كلمة المرور'),
            SizedBox(height: 20,),
            RememberMeCheckbox(),
            SizedBox(height: 36,),
            CustomButton()
            ],
          ),
               ),
       ),
    );
  }
}
