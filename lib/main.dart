import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'screens/feedback_fac.dart';
import 'screens/feedback_stu.dart';
import 'screens/signin/signin_fac.dart';
import 'screens/signin/signin_screen.dart';
import 'screens/signin/signin_stu.dart';
import 'screens/signup/signup_screen.dart';
import 'screens/viewfeedback.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: "assets/.env");

  await Supabase.initialize(
    url: dotenv.env["SUPABASE_URL"]!,
    anonKey: dotenv.env["SUPABASE_KEY"]!,
  );

  // final bool isLoggedIn = await _checkLoginStatus();

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

// Future<bool> _checkLoginStatus() async {
//   final prefs = await SharedPreferences.getInstance();
//   return prefs.getBool('isLoggedIn') ?? false;
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EduSurvey',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SignInScreen(),
        '/signinstu': (context) => const SignInStu(),
        '/signinfac': (context) => const SigninFac(),
        '/signup': (context) => SignupScreen(),
        '/feedbackstu': (context) => const StudentFeedbackScreen(),
        '/feedbackfac': (context) => const ViewFeedBack(),
        '/viewfeedback': (context) => const ViewStudentFeedback(),
      },
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        brightness: Brightness.dark,
      ),
      initialRoute: '/',
    );
  }
}
