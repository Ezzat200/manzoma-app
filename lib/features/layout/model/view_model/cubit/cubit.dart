
import 'dart:developer';


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show BlocProvider, Cubit;
import 'package:manzoma/features/home/model/view/home_screen.dart';
import 'package:manzoma/features/layout/model/view_model/cubit/states.dart';


class ManzomaCubit extends Cubit<ManzomaStates> {
  ManzomaCubit() : super(ManzomaInitialState());

  static ManzomaCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  // void openServiceDetails(BuildContext context, ServiceModel service) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //         builder: (context) => ServiceDetails(
  //               serviceModel: service,
  //             )),
  //   );
  // }

  String languageCode = 'ar';

  List<Widget> screens = [
    HomeScreen(),
    // SectionsScreen(),
    // // SectionsScreen(),
    // ServicesScreen(),
    
    // BlogScreen(),

    // // ProfileScreen(),

    // ProfileDetails(),

    // ServiceDetails(), // أضف صفحة التفاصيل
  ];

  void changeBottomNavBar(int index) {
    currentIndex = index;
    emit(SIGChangeBottomNavBarState());
  }

  // Future<List<BlogModel>> fetchBlogData() async {
  //   try {
  //     final querySnapshot =
  //         await FirebaseFirestore.instance.collection('blog').get();
  //     emit(SIGGetBlogsState());

  //     return querySnapshot.docs.map((doc) {
  //       return BlogModel.fromJson(doc.data());
  //     }).toList();
  //   } catch (e) {
  //     print('Error fetching blog data: $e');
  //     return [];
  //   }
  // }

  // List<BlogModel>? blogs;

//   void getBlogData() async {
//     blogs = await fetchBlogData();
//     emit(SIGGetBlogsState());
//   }

//   Future<List<ServiceModel>> fetchServicesData() async {
//     try {
//       final querySnapshot =
//           await FirebaseFirestore.instance.collection('services').get();

//       return querySnapshot.docs.map((doc) {
//         return ServiceModel.fromJson(doc.data());
//       }).toList();
//     } catch (e) {
//       print('Error fetching categories data: $e');
//       return [];
//     }
//   }

//   List<ServiceModel>? services;
//   void getServicesData() async {
//     services = await fetchServicesData();
//     // print(services![0].featuresAr);
//     log("Hello");
//     // log("${services?[0].featuresAr}");
//     log("number: ${services?.length}");
//     emit(SIGGetServicesState());
//   }

//  Future<void> submitOrder({
//   required String name,
//   required String email,
//   required String phone,
//   required String service,
//   required String preferredDate,
//   required String notes,
//   required String serviceDetails,
//   required String address,
  
// }) async {
//   try {
//     emit(StratSendUserDataState());

//     await FirebaseFirestore.instance.collection('orders').add({
//       'name': name,
//       'email': email,
//       'phone': phone,
//       'service': service,
//       'preferred_date': preferredDate,
//       'notes': notes,
//       'status': 0,
//       'service_details': serviceDetails,
//       'address': address,
//       'timestamp': FieldValue.serverTimestamp(),
//     });

//     emit(SendUserDataSuccessState());
//     log("Order submitted successfully!");
//   } catch (e) {
//     emit(SendUserDataErrorState());
//     log("Error submitting order: $e");
//     rethrow;
//   }
// }


//   Future<void> logout() async {
//     AppConfig.token = null;

//     final prefs = await SharedPreferences.getInstance();
//     await prefs.remove('token');

//     await FirebaseAuth.instance.signOut();

//     emit(LogOutState());
//   }

//   Future<void> deleteAccount(context) async {
//     final auth = FirebaseAuth.instance;
//     final user = auth.currentUser;

//     String email = '';
//     String password = '';

//     await showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: Text(S.of(context).deleteAccountConfirm),
//           content: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               TextField(
//                 onChanged: (value) => email = value,
//                 decoration: InputDecoration(labelText: S.of(context).email),
//               ),
//               TextField(
//                 onChanged: (value) => password = value,
//                 decoration: InputDecoration(labelText: S.of(context).password),
//                 obscureText: true,
//               ),
//             ],
//           ),
//           actions: [
//             TextButton(
//               onPressed: () => Navigator.pop(context),
//               child: Text(S.of(context).cancel),
//             ),
//             TextButton(
//               onPressed: () => Navigator.pop(context, true),
//               child: Text(S.of(context).confirm),
//             ),
//           ],
//         );
//       },
//     ).then((confirmed) async {
//       if (confirmed == true && user != null) {
//         try {
//           final cred =
//               EmailAuthProvider.credential(email: email, password: password);
//           await user.reauthenticateWithCredential(cred);

//           // حذف من Firestore
//           await FirebaseFirestore.instance
//               .collection('users')
//               .doc(user.uid)
//               .delete();

//           // حذف من Firebase Auth
//           await user.delete();

//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(
//                 content: Text(S.of(context).accountDeleted),
//                 backgroundColor: Colors.green),
//           );

//           // خروج بعد الحذف
//           OneBillonCubit.get(context).logout();

//           emit(AccountDeleteSuccessState());


//         } on FirebaseAuthException catch (e) {
//           String message;
//           if (e.code == 'user-mismatch' ||
//               e.code == 'user-not-found' ||
//               e.code == 'wrong-password') {
//             message = S.of(context).invalidCredentials;
//           } else if (e.code == 'requires-recent-login') {
//             message = S.of(context).reloginToDelete;
//           } else {
//             message = S.of(context).somethingWentWrong;
//           }

//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(content: Text(message), backgroundColor: Colors.red),
//           );

//           emit(AccountDeleteErrorState());
//         }
//       }
//     });
//   }

  // List<ServiceSectionModel>? serviceSections;

  // Future<List<ServiceSectionModel>> fetchServiceSections() async {
  //   try {
  //     final querySnapshot =
  //         await FirebaseFirestore.instance.collection('service_sections').get();

  //     return querySnapshot.docs.map((doc) {
  //       return ServiceSectionModel.fromJson(doc.data());
  //     }).toList();
  //   } catch (e) {
  //     log('Error fetching service sections: $e');
  //     return [];
  //   }
  // }

  // void getServiceSections() async {
  //   serviceSections = await fetchServiceSections();
  //   emit(SIGGetServiceSectionsState());
  // }


}
