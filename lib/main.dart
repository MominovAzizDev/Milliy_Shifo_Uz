import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:milliy_shifo/core/utils/app_colors.dart';
import 'package:milliy_shifo/features/pages/splash/presentation/pages/splash.dart';
import 'package:milliy_shifo/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: AppColors.backColor),
      debugShowCheckedModeBanner: false,
      home: const Splash(),
    );
  }
}
