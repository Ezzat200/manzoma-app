import 'package:flutter/material.dart';
import 'package:manzoma/core/app_colors.dart';
import 'package:manzoma/core/app_size.dart';

class CustomTextFieldPassword extends StatefulWidget {
  const CustomTextFieldPassword({super.key, required this.nameField});
  final String nameField;

  @override
  State<CustomTextFieldPassword> createState() => _CustomTextFieldPasswordState();
}

class _CustomTextFieldPasswordState extends State<CustomTextFieldPassword> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    bool isPassword = widget.nameField.contains('كلمة المرور'); // أو عدّله حسب اللغة

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSize.Padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.nameField,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.text,
            ),
          ),
          const SizedBox(height: 5),
          TextField(
            obscureText: isPassword ? _obscureText : false,
            decoration: InputDecoration(
              suffixIcon: isPassword
                  ? IconButton(
                      icon: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility,
                        color: AppColors.text,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    )
                  : null,
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffE5E5E5), width: 1.0),
                borderRadius: BorderRadius.circular(AppSize.borderRadius),
              ),
              enabledBorder: OutlineInputBorder(
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
