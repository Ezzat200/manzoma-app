
import 'package:flutter/material.dart';
import 'package:manzoma/core/app_colors.dart';
import 'package:manzoma/core/app_size.dart';

class customTextField extends StatelessWidget {
  const customTextField({
    super.key, required this.nameField,
  });
  final String nameField;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: AppSize.Padding),
      child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
                       Text(nameField,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: AppColors.text),),
                       SizedBox(height: 5,),
                       TextField(
                         decoration: InputDecoration(
                           
                           border: OutlineInputBorder(
                             borderSide: BorderSide(color: Color(0xffE5E5E5), width: 1.0),
                             borderRadius: BorderRadius.circular(AppSize.borderRadius),
                           ),
                            enabledBorder:  OutlineInputBorder(
                             borderSide: BorderSide(color: Color(0xffE5E5E5), width: 1.0),
                             borderRadius: BorderRadius.circular(AppSize.borderRadius),
                           ),
                           
                            errorBorder: OutlineInputBorder(
                             borderSide: BorderSide(color: Color(0xffE5E5E5), width: 1.0),
                             borderRadius: BorderRadius.circular(AppSize.borderRadius),
                           ),
                              focusedBorder: OutlineInputBorder(
                             borderSide: BorderSide(color: Color(0xffE5E5E5), width: 1.0),
                             borderRadius: BorderRadius.circular(AppSize.borderRadius),
                           ),
                           
                           
                           
                          
                           
                           ),
                           
                           ),
      
       ],
      
      ),
    );
  }
}