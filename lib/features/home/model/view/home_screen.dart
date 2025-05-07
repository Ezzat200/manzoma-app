import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:manzoma/core/app_colors.dart';
import 'package:manzoma/core/app_size.dart';
import 'package:manzoma/core/widgets/custom_appbar.dart';
import 'package:manzoma/core/widgets/custom_drwer.dart';
import 'package:manzoma/core/widgets/custom_drwer_screen.dart';
import 'package:manzoma/core/widgets/custom_info_page.dart';
import 'package:manzoma/features/home/model/view/widgets/card_slider.dart';
import 'package:manzoma/features/home/model/view/widgets/custom_blog.dart';
import 'package:manzoma/features/home/model/view/widgets/custom_card_fetures.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      drawer: CustomDrwer(),

      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: CustomAppBar(
          pageName: 'Home',
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.only(top: 5),
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
                
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   Text('منظومة ',style: TextStyle(color: AppColors.primaryColor,fontWeight: FontWeight.w700,fontSize: 20)),
                   Text('أعد ترتيب يومك مع منظومة ',style: TextStyle(color: AppColors.white,fontWeight: FontWeight.w700,fontSize: 18)),
                   Text('بنظام ذكي يمنحك السيطرة على سير العمل، ويسهل التواصل مع فريقك، وينظم كل مهمة باحترافية ,مصمم لتلبية احتياجات المشاريع الكبيرة والصغيرة، مع ضمان تحقيق أهدافك في الوقت المحدد بنجاحات أكثر وضوحًا وكفاءة ',style: TextStyle(color: Color(0xffDBDBDB),fontWeight: FontWeight.w400,fontSize: 14),textAlign: TextAlign.center,)


                  ],
                ),
              ),
              SizedBox(height: 8,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 26),
                child: Column(
                  children: [
                    CustomInfoPage(
                      desc: 'المميزات',
                    ),
                    SizedBox(height: 20,),
                     CustomCardFetures(
                    title: 'إدارة سهلة وفعالة',
                    desc: 'ننظّم كل مهامك بمرونة، ونحدد الأولويات والمواعيد بسهولة لأن الوقت هو أهم أصولك',
                    svgIcon: 'assets/Features_1.svg',
                  ),
                  SizedBox(height: 10,),
                  CustomCardFetures(
                    title: 'تواصل فريقك بسلاسة',
                    desc: 'اجعل فريقك متصل دائمًا معك بأدوات تواصل مدمجة تضمن وضوح الأفكار وسرعة الإنجاز',
                    svgIcon: 'assets/Features_2.svg',
                  ),
                  SizedBox(height: 10,),

                   CustomCardFetures(
                    title: 'تقارير تمنحك رؤية أقوى',
                    desc: 'نقدم لك تقارير دقيقة وتحليلات شاملة تساعدك على رؤية الصورة كاملة واتخاذ قرارات أفضل',
                    svgIcon: 'assets/Features_3.svg',
                  ),
                  SizedBox(height: 10,),
                  
                   CustomCardFetures(
                    title: 'تكامل يمنحك الحرية',
                    desc: 'تعمل "منظومة" بانسيابية مع أدواتك اليومية، لتبقى على طبيعتك بينما تحقق المزيد من الإنجازات',
                    svgIcon: 'assets/Features_4.svg',
                  ),
                  SizedBox(height: 20,),
                  CustomInfoPage(
                      desc: 'عن منظومة',
                    ),
                    SizedBox(height: 10,),
                     Text(
                      'في منظومة هدفنا أن تكون مسيرتك المهنية أسهل وأسرع وطرقاتك إلى النجاح أقوم',
                      style: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: Color(0xff7A7A7A),
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                    SizedBox(height: 12,),
                  //هنا 
                  CardsSlider(),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomInfoPage(
                        desc: 'المدونات',
                      ),
                      Row(
                        children: [
                          Text('عرض الكل',style: TextStyle(),),
                          SizedBox(width: 10,),
                          SvgPicture.asset('assets/show_all.svg'),

                        ],
                      )
                    ],
                  ),
                          SizedBox(height: 20,),
                          CustomBlog(),
                          SizedBox(height: 20,),
                          CustomBlog(),
                          SizedBox(height: 20,),

                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
