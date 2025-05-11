
import 'package:flutter/material.dart';
import 'package:manzoma/core/app_colors.dart';
import 'package:manzoma/core/app_size.dart';

class CustomTextFieldProfile extends StatelessWidget {
  const CustomTextFieldProfile({
    super.key, required this.nameField, required this.username,
  });
  final String nameField;
final String username;
  @override
  Widget build(BuildContext context) {
    return Column(
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [
                     Text(nameField,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: AppColors.text),),
                     SizedBox(height: 5,),
                     SizedBox(
                      height: 45,
                       child: TextField(
                        
                         decoration: InputDecoration(
                          label: Text(username,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: AppColors.text),),
                           fillColor: AppColors.textDrwer.withOpacity(0.03),
                           filled: true,
                           border: OutlineInputBorder(
                             borderSide: BorderSide(color: AppColors.border, width: 1.0),
                             borderRadius: BorderRadius.circular(AppSize.borderRadius),
                           ),
                            enabledBorder:  OutlineInputBorder(
                             borderSide: BorderSide(color: AppColors.border, width: 1.0),
                             borderRadius: BorderRadius.circular(AppSize.borderRadius),
                           ),
                           
                            errorBorder: OutlineInputBorder(
                             borderSide: BorderSide(color: AppColors.border, width: 1.0),
                             borderRadius: BorderRadius.circular(AppSize.borderRadius),
                           ),
                              focusedBorder: OutlineInputBorder(
                             borderSide: BorderSide(color: AppColors.border, width: 1.0),
                             borderRadius: BorderRadius.circular(AppSize.borderRadius),
                           ),
                           
                           
                           
                          
                           
                           ),
                           
                           ),
                     ),
    
     ],
    
    );
  }
}