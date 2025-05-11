import 'package:flutter/material.dart';


import 'package:manzoma/core/widgets/custom_appbar_two.dart';
import 'package:manzoma/core/widgets/custom_drwer.dart';
import 'package:manzoma/core/widgets/custom_info_page.dart';
import 'package:manzoma/features/Reviews/model/view/widgets/reviews_card.dart';
import 'package:manzoma/features/blogs/model/view/blogs_details_screen.dart';
import 'package:manzoma/features/home/model/view/widgets/custom_blog.dart';



class BlogsScreen extends StatelessWidget {
  const BlogsScreen({super.key});

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
        CustomInfoPage(desc: '  المدونات'),
       ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) {
        return   InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) =>
            const BlogDetailsScreen()));

          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: CustomBlog(),
          ),
        );  
        },
        
        shrinkWrap: true,
        
        
        
       )
    
     
      ]),
  )
),
    );
  }
}
