
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  // التأكد من تهيئة بيئة الويدجتس
  WidgetsFlutterBinding.ensureInitialized();
  
  // ربط المشروع بـ Firebase باستخدام ملف الإعدادات
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text('تم ربط Firebase بنجاح بانتظار واجهات الصديقة!'),
        ),
      ),
    );
  }
}
