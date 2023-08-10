import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'constants.dart';
import 'core/utils/app_router.dart';
import 'features/Splash/presentaion/views/Splash_View.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const bookly());
}

//booklyapp
class bookly extends StatelessWidget {
  const bookly({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)
          //montserratTextTheme => نوع الخط
          ),
    );
  }
}
