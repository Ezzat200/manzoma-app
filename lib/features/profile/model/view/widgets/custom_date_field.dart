import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:manzoma/core/app_colors.dart';
import 'package:manzoma/core/app_size.dart';
import 'package:manzoma/core/widgets/custom_button.dart';

class CustomDateField extends StatefulWidget {
  const CustomDateField({super.key});

  @override
  State<CustomDateField> createState() => _CustomDateFieldState();
}

class _CustomDateFieldState extends State<CustomDateField> {
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "تاريخ الميلاد",
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: AppColors.text),
        ),
        const SizedBox(height: 5),
        InkWell(
          onTap: () async {
            final DateTime? picked = await showDatePicker(
              context: context,
              initialDate: DateTime(2000),
              firstDate: DateTime(1900),
              lastDate: DateTime.now(),
            );
            if (picked != null) {
              setState(() {
                selectedDate = picked;
              });
            }
          },
          child: Container(
            height: 45,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              color: const Color(0xffF5F5F5),
              border: Border.all(color: AppColors.border),
              borderRadius: BorderRadius.circular(AppSize.borderRadius),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  selectedDate != null
                      ? DateFormat('dd/MM/yyyy').format(selectedDate!)
                      : 'اختر تاريخ الميلاد',
                  style: TextStyle(fontSize: 14, color: AppColors.text),
                ),
               SvgPicture.asset('assets/date.svg'),
          
               
              ],
            ),
          ),
        ),
      ],
    );
  }
}
