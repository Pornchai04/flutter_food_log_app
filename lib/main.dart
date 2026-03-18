import 'package:flutter/material.dart';
import 'package:flutter_food_log_app/views/splash_screen_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  //คั้งค่าการเชื่อมต่อกับ Supabase ก่อนที่จะรันแอป
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://ztfhakxmsslphxmbmixj.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inp0Zmhha3htc3NscGh4bWJtaXhqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzM3ODc3NzYsImV4cCI6MjA4OTM2Mzc3Nn0.kQsxHNVgyENLvAp91hY2Ywe4TY0BpwcozqOaC1_QAKU',
  );

  runApp(FlutterFoodLogApp());
}

class FlutterFoodLogApp extends StatefulWidget {
  const FlutterFoodLogApp({super.key});

  @override
  State<FlutterFoodLogApp> createState() => _FlutterFoodLogAppState();
}

class _FlutterFoodLogAppState extends State<FlutterFoodLogApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenUi(),
      theme: ThemeData(
          textTheme: GoogleFonts.promptTextTheme(Theme.of(context).textTheme)),
    );
  }
}
