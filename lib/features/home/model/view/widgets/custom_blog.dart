import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manzoma/core/app_colors.dart';


class CustomBlog extends StatelessWidget {
  const CustomBlog({
    super.key,
 
  });

  

  @override
  Widget build(BuildContext context) {
   
        return Container(
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xffD9D9D9)),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  
                  child: Container(
                     decoration: BoxDecoration(
                    border: Border.all(color: AppColors.primaryColor)
                  ),
                    child: Image.asset(
                      'assets/blog_pic.png',
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    
                     
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                SizedBox(
                  width: 170,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص',
                        style: const TextStyle(
                          color: Color(0xff414141),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          height: 1.8,
                        ),
                        softWrap: true,
                        overflow: TextOverflow.visible,
                      ),
                      Row(
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Text(
                               'المزيد من التفاصيل ',
                                style: TextStyle(
                                  color: AppColors.primaryColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Positioned(
                                bottom: -1,
                                child: Container(
                                  width: 75,
                                  height: 2,
                                  color: AppColors.primaryColor,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 10),
                          Image.asset('assets/arrow_show_all.png')
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }
   
  }
