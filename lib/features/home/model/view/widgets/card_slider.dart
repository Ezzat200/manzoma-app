import 'package:flutter/material.dart';
import 'package:manzoma/core/app_colors.dart';

class CardsSlider extends StatefulWidget {
  const CardsSlider({super.key});

  @override
  State<CardsSlider> createState() => _CardsSliderState();
}

class _CardsSliderState extends State<CardsSlider> {
  late final PageController _pageController;
  int _currentPage = 0;

  final List<String> cards = [
    "ابدأ مشاريعك وتابع تقدمها بكل سهولة مع أدوات مبتكرة",
    "خصّص المهام لفريقك، بتحديد الأولويات، ومتابعة الإنجازات للمحافظة على سير العمل بكفاءة",
    "تحكم في صلاحيات ومستويات الوصول، حماية البيانات وتنظيم العمل التعاوني"
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.45);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          child: PageView.builder(
            controller: _pageController,
            itemCount: cards.length,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              return Container(
                width: 145,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                child: _CardItem(text: cards[index]),
              );
            },
          ),
        ),
        // const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            cards.length,
            (index) => AnimatedContainer(
              duration: Duration(milliseconds: 300),
              margin: EdgeInsets.symmetric(horizontal: 4),
              width: _currentPage == index ? 20 : 8,
              height: 8,
              
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.primaryColor),
                color: _currentPage == index
                    ? AppColors.primaryColor
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}

class _CardItem extends StatelessWidget {
  final String text;

  const _CardItem({required this.text});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Positioned(
        //   bottom: 30,
        //   left: 0,
        //   right: 0,
        //   child: Container(
        //     height: 8,
        //     decoration: BoxDecoration(
        //       color: Color(0xFFFF9900),
        //       borderRadius: BorderRadius.circular(12),
        //     ),
        //   ),
        // ),
        Container(
          height: 160,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(width: 5,color: AppColors.primaryColor)),
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF7C4DFF), Color(0xFF3F2B96)],
            ),
          ),
          child: Center(
            child: Text(
              text,
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                height: 1.6,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
