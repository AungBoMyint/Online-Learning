import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_learning/presentation/page/add_lesson_page.dart';
import 'package:online_learning/presentation/page/authenticated_page.dart';
import 'package:online_learning/presentation/page/course_detail/course_detail_page.dart';
import 'package:online_learning/presentation/page/email_verification_page.dart';
import 'package:online_learning/presentation/page/initial_splash.dart';
import 'package:online_learning/presentation/page/lesson_detail/lesson_detail_page.dart';
import 'package:online_learning/presentation/page/module_detail/module_detial_page.dart';
import 'package:online_learning/presentation/page/phone_number_signin.dart';
import 'package:online_learning/presentation/page/sign_up_page.dart';
import 'package:online_learning/presentation/page/upload/add_content_page.dart';
import 'package:online_learning/presentation/page/upload/add_quiz_page.dart';
import 'package:online_learning/presentation/page/upload/upload_course_page.dart';
import 'package:online_learning/presentation/screen/check_user_screen.dart';

import 'presentation/page/login_page.dart';

class RouteGenerator {
  static const String checkUserScreen = '/';
  static const String initialPage = '/initialSplashPage';
  static const String authenticatedPage = '/authenticatedPage';
  static const String courseUploadPage = '/courseUploadPage';
  static const String addLessonPage = '/addLessonPage';
  static const String addContentPage = '/addContentPage';
  static const String addQuizPage = '/addQuizPage';
  static const String loginPage = '/login';
  static const String signUpPage = '/signUpPage';
  static const String signInPhoneNumberPage = '/signInPhoneNumber';
  static const String emailVerificationPage = '/emailVerificationPage';
  // static const String courseDetailPage = '/courseDetailPage';
  static const String lessonDetailPage = '/lessonDetailPage';
  static const String moduleDetailPage = '/moduleDetailPage';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case checkUserScreen:
        return MaterialPageRoute(
          builder: (context) => const CheckUserScreen(),
        );
      case initialPage:
        return MaterialPageRoute(
          builder: (context) => const InitialSplashPage(),
        );
      case authenticatedPage:
        return MaterialPageRoute(
          builder: (context) => const AuthenticatedPage(),
        );
      case moduleDetailPage:
        return MaterialPageRoute(
          builder: (context) => const ModuleDetailPage(),
        );
      /* case courseDetailPage:
        return MaterialPageRoute(
          builder: (context) => const CourseDetialPage(),
        );*/
      /*case lessonDetailPage:
        return MaterialPageRoute(
          builder: (context) => const LessonDetailPage(),
        );*/
      case courseUploadPage:
        return MaterialPageRoute(
          builder: (context) => const UploadCoursePage(),
        );
      case addLessonPage:
        return MaterialPageRoute(
          builder: (context) => const AddLessonPage(),
        );
      case addContentPage:
        return MaterialPageRoute(
          builder: (context) => const AddContentPage(),
        );
      case addQuizPage:
        return MaterialPageRoute(
          builder: (context) => const AddQuizPage(),
        );
      case loginPage:
        return MaterialPageRoute(
          builder: (context) => const LoginPage(),
        );
      case signInPhoneNumberPage:
        return MaterialPageRoute(
          builder: (context) => const PhoneNumberSignInWidget(),
        );
      case signUpPage:
        return MaterialPageRoute(
          builder: (context) => const SignUpPage(),
        );
      case emailVerificationPage:
        return MaterialPageRoute(
          builder: (context) => const EmailVerificationPage(),
        );
      default:
        throw Exception("Page Not Found.");
    }
  }
}
