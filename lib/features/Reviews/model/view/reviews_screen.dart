import 'package:flutter/material.dart';


import 'package:manzoma/core/widgets/custom_appbar_two.dart';
import 'package:manzoma/core/widgets/custom_drwer.dart';
import 'package:manzoma/core/widgets/custom_info_page.dart';
import 'package:manzoma/features/Reviews/model/view/widgets/reviews_card.dart';



class ReviewsScreen extends StatelessWidget {
  const ReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
  

    return Scaffold(
       drawer: CustomDrwer(),
      appBar: PreferredSize(
  preferredSize: const Size.fromHeight(150), 
  child: CustomAppBarTwo(
    screenName: ' Reviews',
  ),
),
body: SingleChildScrollView(
  child: Padding(
    padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 30),
    child: Column(
      children: [
        CustomInfoPage(desc: '  التقييمات'),
        const SizedBox(height: 15,),
      ReviewCard(),
        const SizedBox(height: 20,),
      ReviewCard(),
     const SizedBox(height: 20,),
      ReviewCard(),
    
     
      ]),
  )
),
    );
  }
}
