import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:manzoma/core/app_colors.dart';
import 'package:manzoma/core/app_size.dart';

class CustomPhoneField extends StatelessWidget {
  const CustomPhoneField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "رقم الهاتف",
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: AppColors.text),
        ),
        const SizedBox(height: 5),
        SizedBox(
          height: 55,
          child: IntlPhoneField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              filled: true,
              fillColor: const Color(0xffF5F5F5),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.border, width: 1.0),
                borderRadius: BorderRadius.circular(AppSize.borderRadius),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.border, width: 1.0),
                borderRadius: BorderRadius.circular(AppSize.borderRadius),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.border, width: 1.0),
                borderRadius: BorderRadius.circular(AppSize.borderRadius),
              ),
            ),
            initialCountryCode: 'EG',
            onChanged: (phone) {
              print(phone.completeNumber);
            },
          ),
        ),
      ],
    );
  }
}
