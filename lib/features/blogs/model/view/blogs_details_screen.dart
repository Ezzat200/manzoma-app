import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:manzoma/core/app_colors.dart';
import 'package:manzoma/core/app_size.dart';


import 'package:manzoma/core/widgets/custom_appbar_two.dart';
import 'package:manzoma/core/widgets/custom_drwer.dart';
import 'package:manzoma/core/widgets/custom_info_page.dart';




class BlogDetailsScreen extends StatelessWidget {
  const BlogDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
  

    return Scaffold(
       drawer: CustomDrwer(),
      appBar: PreferredSize(
  preferredSize: const Size.fromHeight(150), 
  child: CustomAppBarTwo(
    screenName: ' Blogs',
  ),
),
body: SingleChildScrollView(
  
  child: Padding(
    padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 30),
    child: Column(
      children: [
        CustomInfoPage(desc: '  تفاصيل المدونة'),
     SizedBox(height: 15,),
Container(
  height: 184,
  width: double.infinity,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(AppSize.borderRadius),
    image: DecorationImage(image: AssetImage('assets/blog_details.jpg',),fit: BoxFit.fill)
  ),
)
,
SizedBox(height: 10,),
Row(
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [SvgPicture.asset('assets/date.svg',color: AppColors.mediumPurple,),
SizedBox(width: 5,),

  Text('8 ديسمبر 2024',style: TextStyle(color: AppColors.mediumPurple,fontWeight: FontWeight.w400,fontSize: 12))
  ],
),
SizedBox(height: 10,),
Text('لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: AppColors.text
)),
SizedBox(height: 10,),
Text(
  '''لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقة وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعة … بروشور أو فلاير على سبيل المثال … أو نماذج مواقع إنترنت …
وعند موافقة العميل المبدئية على التصميم يتم إزالة هذا النص من التصميم ويتم وضع النصوص النهائية المطلوبة للتصميم.
ويقول البعض إن وضع النصوص التجريبية بالتصميم قد يشغل المشاهد عن وضع الكثير من الملاحظات أو الانتقادات للتصميم الأساسي.
وخلافاً للاعتقاد السائد فإن لوريم إيبسوم ليس نصاً عشوائياً، بل إن له جذورًا في الأدب اللاتيني الكلاسيكي منذ العام 45 قبل الميلاد، من كتاب "حول أقاصي الخير والشر".''',
  style: TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.textDrwer,
  ),
),

    
     
      ]),
  )
),
    );
  }
}
