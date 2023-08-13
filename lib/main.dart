import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:labor/features/forget_password/forget_password.dart';
import 'package:labor/features/login/presentation/ui/login_screen.dart';
import 'package:labor/features/onbording/presentation/manager/onboarding_provider.dart';
import 'package:labor/features/onbording/presentation/pages/on_boarding_screen.dart';
import 'package:labor/features/onbording/presentation/pages/welcome_page.dart';
import 'package:labor/features/register/presentation/ui/register_screen.dart';
import 'package:labor/features/reset_password/presentation/ui/reset_password.dart';
import 'package:labor/features/splash/splash.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(ChangeNotifierProvider(
    create: (context) =>OnboardingProvider(),
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        var provider = Provider.of<OnboardingProvider>(context);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: SplashScreen.routeName,
          routes: {
            SplashScreen.routeName: (context) => SplashScreen(),
            WelcomePage.routeName: (context) => WelcomePage(),
            OnBoardingScreen.routeName : (context) => OnBoardingScreen(),
            LoginScreen.routeName : (context) => LoginScreen(),
            RegisterScreen.routeName :(context) => RegisterScreen(),
            ResetPassword.routeName :(context) =>ResetPassword(),
            ForgetPassword.routeName : (context) => ForgetPassword(),
          },
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: [
            Locale('en'), // English
            Locale('es'), // Spanish
          ],
          locale: Locale(provider.language),
        );
      },
    );
  }
}
