import 'package:flutter/foundation.dart'; // مهم لـ kReleaseMode
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:device_preview/device_preview.dart'; // استيراد DevicePreview
import 'package:manzoma/features/auth/model/view/login_screen.dart';
import 'package:manzoma/features/layout/model/view/layout_screen.dart';
import 'package:manzoma/features/layout/model/view_model/cubit/cubit.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode, // يعطل DevicePreview في الـ Release mode
      builder: (context) => const MyApp(), // يبني التطبيق الأساسي
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ManzomaCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
       // دعم تغيير اللغة
        builder: DevicePreview.appBuilder,     // دعم تغيير أبعاد الشاشة
        useInheritedMediaQuery: true,          // دعم التفاعل مع خصائص الجهاز المختار
        home: const LoginScreen(),
      ),
    );
  }
}
